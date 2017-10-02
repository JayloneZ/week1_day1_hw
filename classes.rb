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

  def student_talk(string)
    return string
  end

  def say_favourite_language(language)
    return "My favourite language is #{language}"
  end
end

class SportsTeam
  attr_accessor :name, :players, :coach
  def initialize(team_name, players, coach)
    @name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def change_coach(new_coach)
    self.coach = new_coach
  end

  def add_player(player_name)
    if self.players.include?(player_name)
      return "Player already exists"
    else
      self.players.push(player_name)
    end
  end

  def add_points(result)
    case result
    when "Win"
      @points += 3
    when "Tie"
      @points += 1
    when "Loss"
      @points
    end
  end
end
