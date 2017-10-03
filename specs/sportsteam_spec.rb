require('minitest/autorun')
require('minitest/rg')
require_relative('../classes.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team1 = SportsTeam.new("Barcelona", ["Messi", "Iniesta", "Pique"], "Valverde")
  end

  def test_change_coach()
    result = @team1.change_coach("Tata")
    assert_equal("Tata", result)
  end

  def test_add_players()
    @team1.add_player("Busquets")
    assert_equal(["Messi", "Iniesta", "Pique", "Busquets"], @team1.players)
  end

  def test_add_players__player_found()
    result = @team1.add_player("Pique")
    assert_equal("Player already exists", result)
  end

  def test_add_points__win()
    result = @team1.add_points("Win")
    assert_equal(3, result)
  end

  def test_add_points__tie()
    result = @team1.add_points("Tie")
    assert_equal(1, result)
  end

  def test_add_points__loss()
    result = @team1.add_points("Loss")
    assert_equal(0, result)
  end

end
