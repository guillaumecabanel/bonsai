class PlantsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @plants = Plant.includes(:user).order("created_at DESC")
  end

  def show
    @plant = Plant.find(params[:id])

    @gardener_other_plants = @plant.user.plants.eager_load(:user).where.not(id: @plant.id)
  end
end
