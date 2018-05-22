class SportsTeam
  attr_accessor :team_name, :players, :coach_name

  def initialize(input_name,input_players,input_coach)
    @team_name = input_name
    @players = input_players
    @coach_name = input_coach
    @points = 0
  end

  def team_name()
    return @team_name
  end
  def players()
    return @players
  end
  def coach_name()
    return @coach_name
  end
  def points()
    return @points
  end


  def update_coach_name(new_name)
    @coach_name = new_name
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def if_player_exists(player_name)
    for player in @players
      if player_name == player
        return true
      end
    end
    return false
  end

  # def if_team_won_or_lost(points)
  #   if points == 0
  #     return "lost"
  #   else
  #     @points += 1
  #   end
  # end

  def update_points(var)
    if var == "won"
      @points += 1
    end
  end

end
