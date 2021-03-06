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

  attr_accessor :name, :players, :coach, :points
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
      self.points += 3
    when "Tie"
      self.points += 1
    when "Loss"
      self.points
    end
  end

end

class Library

  attr_accessor :books
  def initialize(books)
    self.books = books
  end

  def list_books()
    self.books
  end

  def find_book_by_title(input_title)
    for book in self.books
      if :title == input_title
        return book
      end
    end
  end

  def find_rental_details_by_title(input_title)
    for book in self.books
      if book[:title] == input_title
        return book[:rental_details]
      end
    end
  end

  def add_book_by_title(input_title)
    self.books.push(
      title: input_title,
      rental_details: {
        student_name: "",
        date: ""
        })
  end

  def change_rental_details(input_title, renter_name, renter_date)
    for book in self.books
      if book[:title] == input_title
        book[:rental_details][:student_name] = renter_name
        book[:rental_details][:date] = renter_date
        return book
      else return "this book doesn't exist in the database"
      end
    end
  end

end
