require 'delegate'

class UserPresenter < SimpleDelegator
  def self.wrap(users)
    users.map { |user| new(user) }
  end

  def points_to_next_level
    next_level = User::LEVELS[level + 1]
    return 0 unless next_level

    next_level.min - care_points
  end
end
