require('minitest/autorun')
require('minitest/rg')
require_relative('../classes.rb')

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Miguel", 16)
    @student2 = Student.new("Huascar", 16)

    @team1 = SportsTeam.new("Barcelona", ["Messi", "Iniesta", "Pique"], "Valverde")
  end

  def test_return_name()
    assert_equal("Miguel", @student1.access_name)
  end

  def test_return_cohort()
    assert_equal(16, @student1.access_cohort)
  end

  def test_name_changer()
    @student1.name_changer("Tony")
    assert_equal("Tony", @student1.access_name)
  end

  def test_cohort_changer()
    @student1.cohort_changer(15)
    assert_equal(15, @student1.access_cohort)
  end

  def test_student_talk()
    result = @student1.student_talk()
    assert_equal("I can talk!", result)
  end

  def test_say_favourite_language()
    result = @student1.say_favourite_language("Ruby")
    assert_equal("My favourite language is Ruby", result)
  end

  def test_change_coach()
    result = @team1.change_coach("Tata")
    assert_equal("Tata", result)
  end

end
