module Users
  class RecalculateLevelService
    def initialize(user)
      @user = user
    end

    def call
      @user.update_attribute(:level, User.level_from_points(@user.care_points))
    end
  end
end
