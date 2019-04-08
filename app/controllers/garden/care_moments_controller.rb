class Garden::CareMomentsController < ApplicationController
  def index
    @care_moments = current_user.care_moments.eager_load(:plant).order(date: :desc)
  end

  def create
    plant = current_user.plants.find(params[:plant_id])
    code  = params[:code]

    if code
      moment_specs = CareMoment::MOMENTS[code.to_sym]
      last_moment  = plant.care_moments.where(code: code).order('date DESC').first

      if last_moment && Date.today < last_moment.date + moment_specs[:min_frequency_in_days].days
        flash[:alert] = "You can't #{code} your plant right now. It's too soon."
      else
        moment = CareMoment.new(
          plant: plant,
          date: Date.today,
          code: code,
        )

        moment.points = moment_specs[:points]

        if moment.save
          # update plant care points
          plant.increment(:care_points, moment.points)
          plant.save

          # update user care points & level
          current_user.increment(:care_points, moment.points)
          current_user.level = User.level_from_points(current_user.care_points)
          current_user.save

          flash[:notice] = "Action successfully saved."
        else
          flash[:alert] = "Unable to save the action."
        end
      end
    else
      flash[:alert] = "What action do you want to perform?"
    end

    redirect_to params[:src] == 'dashboard' ? garden_root_path : garden_plant_path(plant)
  end
end
