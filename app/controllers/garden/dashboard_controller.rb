class Garden::DashboardController < ApplicationController
  def show
    @last_level = User::LEVELS.keys.last

    @user = UserPresenter.new(current_user)
    @latest_plants       = @user.plants.order(created_at: :desc).limit(3)
    @plants_needing_care = PlantQuery.relation(@user.plants).needing_care
    @plants_needing_care = PlantPresenter.wrap(@plants_needing_care)
  end
end
