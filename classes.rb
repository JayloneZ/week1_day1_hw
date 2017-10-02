class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def access_name
    return @name
  end

  def access_cohort
    return @cohort
  end

  def name_changer(input_name)
    @name = input_name
  end

  def cohort_changer(input_cohort)
    @cohort = input_cohort
  end

  def student_talk()
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "My favourite language is #{language}"
  end
end

class SportsTeam

def initialize(team_name, players, coach)
  @name = team_name
  @players = players
  @coach = coach
end

def return_name()
  return @name
end

def return_players()
  return @players
end

def return_coach()
  return @coach
end

end
