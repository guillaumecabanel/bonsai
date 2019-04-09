class Garden::CareMomentsController < ApplicationController
  def index
    @care_moments = current_user.care_moments.eager_load(:plant).order(date: :desc)
  end

  def create
    @plant = current_user.plants.find(params[:plant_id])
    @code  = params[:code]

    generate_care_moment if action_can_be_performed?

    redirect_to params[:src] == 'dashboard' ? garden_root_path : garden_plant_path(@plant)
  end

  private

  def too_soon?
    last_moment  = @plant.care_moments.where(code: @code).order('date DESC').first
      
    last_moment && Date.today < last_moment.date + @moment_specs[:min_frequency_in_days].days
  end

  def generate_care_moment
    if GenerateCareMomentService.new(@plant, @code).call
      flash[:notice] = "Action successfully saved."
    else
      flash[:alert] = "Unable to save the action."
    end
  end

  def action_can_be_performed?
    if !@code
      flash[:alert] = "What action do you want to perform?"
      false
    elsif too_soon?
      flash[:alert] = "You can't #{@code} your plant right now. It's too soon."
      false
    else
      true
    end
  end
end
