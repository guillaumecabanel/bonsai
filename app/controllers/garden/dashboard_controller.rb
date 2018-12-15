class Garden::DashboardController < ApplicationController
  def show
    @last_level = User::LEVELS.keys.last

    @latest_plants       = current_user.plants.order("created_at DESC").limit(3)
    @plants_needing_care = current_user.plants.needing_care.order(:name)
  end
end
