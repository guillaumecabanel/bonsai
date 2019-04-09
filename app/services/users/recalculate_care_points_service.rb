module Users
  class RecalculateCarePointsService
    def initialize(user)
      @user = user
    end

    def call
      @user.update_attribute(:care_points, @user.plants.sum(:care_points))
    end
  end
end
