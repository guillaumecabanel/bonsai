class Garden::DashboardController < ApplicationController
  def show
    @last_level = User::LEVELS.keys.last

    @latest_plants       = current_user.plants.order(created_at: :desc).limit(3)
    @plants_needing_care = PlantQuery.relation(current_user.plants).needing_care
  end
end
