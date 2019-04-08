class User < ApplicationRecord
  LEVELS = {
    # NUMBER : RANGE
    # beginner
    0 => 0...10,
    # now
    1 => 10...20,
    # one week
    2 => 20...100,
    # one month
    3 => 100...500,
    # not so quick (4-5 month)
    4 => 500...1300,
    # one year
    5 => 1300...1985,
    # one year and a half
    6 => 1985..Float::INFINITY
  }

  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :plants, dependent: :destroy
  has_many :care_moments, through: :plants

  scope :top, -> (limit) { 
    select('users.*, COUNT(DISTINCT plants.id) AS plants_count, COUNT(care_moments.id) AS care_moments_count').
    joins(plants: :care_moments).
    group('users.id').
    order('level DESC, care_points DESC').
    limit(limit)
  }

  def self.level_from_points(points)
    LEVELS.find { |level, range| range.include?(points) }[0]
  end

  def points_to_next_level
    next_level = LEVELS[level + 1]
    return 0 unless next_level

    next_level.min - care_points
  end

  def recalculate_care_points!
    update_attribute(:care_points, plants.sum(:care_points))
  end

  def recalculate_level!
    update_attribute(:level, User.level_from_points(care_points))
  end
end
