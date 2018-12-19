class Garden::CareMomentsController < ApplicationController
  before_action :set_plant, only: [:create]
  before_action :set_code,  only: [:create]
  before_action :ensure_moment_can_be_performed, only: [:create]

  def index
    @care_moments = current_user.care_moments.includes(:plant).order('date DESC')
  end

  def create
    if CreateCareMomentService.new(@plant, @code).call
      flash[:notice] = "Action successfully saved."
    else
      flash[:alert] = "Unable to save the action."
    end

    respond_to do |format|
      format.html { redirect_to redirection_path }

      format.js do
        @plant   = PlantQuery.relation(current_user.plants).
          include_care_status.
          find(@plant.id)

        @moments = @plant.care_moments.order("date DESC")
        @user    = UserPresenter.new(current_user)

        render :create
        flash.clear
      end
    end
  end

  private

  def ensure_moment_can_be_performed
    if @code.blank?
      flash[:alert] = "What action do you want to perform?"
      return redirect_to redirection_path
    elsif moment_unavailable?
      flash[:alert] = "You can't #{@code} your plant right now. It's too soon."
      return redirect_to redirection_path
    end
  end

  # NOTE: this should move to a contract
  def moment_unavailable?
    moment_specs = CareMoment::MOMENTS[@code.to_sym]
    last_moment  = @plant.care_moments.where(code: @code).order('date DESC').first
    next_moment  = last_moment.date + moment_specs[:min_frequency_in_days].days if last_moment

    return last_moment && Date.today < next_moment
  end

  def redirection_path
    params[:src] == 'dashboard' ? garden_root_path : garden_plant_path(@plant)
  end

  def set_code
    @code = params[:code]
  end

  def set_plant
    @plant = current_user.plants.find(params[:plant_id])
  end
end
