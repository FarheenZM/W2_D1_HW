require ("minitest/autorun")
require ("minitest/rg")

require_relative("../SportsTeam")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    assert_equal("Coders", team.team_name)
  end
  def test_players
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    assert_equal(["Farheen","Debi","Harjit"], team.players)
  end
  def test_coach_name
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    assert_equal("Joan", team.coach_name)
  end
  def test_points
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    assert_equal(0, team.points)
  end

  def test_update_coach_name
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    team.update_coach_name("Eti")
    assert_equal("Eti", team.coach_name)
  end

  def test_add_player
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    team.add_player("New")
    assert_equal(4, team.players.count)
  end

  def test_if_player_exists__exists
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    assert_equal(true, team.if_player_exists("Debi"))
  end

  def test_if_player_exists__not_exists
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    assert_equal(false, team.if_player_exists("Ria"))
  end

  def test_update_points__won
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    team.update_points("won")
    assert_equal(1,team.points)
  end
  def test_update_points__lost
    team = SportsTeam.new("Coders", ["Farheen","Debi","Harjit"], "Joan")
    team.update_points("lost")
    assert_equal(0,team.points)
  end

end
