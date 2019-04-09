class UserPresenter < BasePresenter
  def points_to_next_level
    next_level = User::LEVELS[level + 1]
    return 0 unless next_level

    next_level.min - care_points
  end
end
