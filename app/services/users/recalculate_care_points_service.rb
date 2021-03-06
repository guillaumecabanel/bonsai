module Users
  class RecalculateCarePointsService
    def initialize(user)
      @user = user
    end

    def call
      recalculate_care_points!
      recalculate_level!
    end

    private

    def recalculate_care_points!
      @user.update_attribute(:care_points, @user.plants.sum(:care_points))
    end

    def recalculate_level!
      @user.update_attribute(:level, level_from_points(@user.care_points))
    end

    def level_from_points(points)
      User::LEVELS.find { |level, range| range.include?(points) }[0]
    end
  end
end
