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
end
