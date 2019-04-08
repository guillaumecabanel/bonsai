class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @latest_plants = Plant.includes(:user).order(created_at: :desc).limit(3)
  end
end
