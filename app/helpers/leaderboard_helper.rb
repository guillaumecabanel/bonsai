module LeaderboardHelper
  def leaderboard_medal_for(rank)
    medals = {
      1 => '🥇',
      2 => '🥈',
      3 => '🥉'
    }
    medals[rank] || '🏅'
  end
end
