class LeaderboardController < ApplicationController
  def show
    @top_users = User.top(10)
  end
end
