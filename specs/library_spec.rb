require('minitest/autorun')
require('minitest/rg')
require_relative('../classes.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library =  Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }]
    )

  end

  def test_list_books()
    result = @library.list_books()
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }], result)
  end

  def test_find_book_by_title()
    result = @library.find_book_by_title("lord_of_the_rings")
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }], result)
  end

  def test_find_rental_details_by_title()
    result = @library.find_rental_details_by_title("lord_of_the_rings")
    assert_equal({student_name: "Jeff", date: "01/12/16"}, result)
  end


  def test_add_book_by_title()
    @library.add_book_by_title("for_whom_the_bell_tolls")
    result = @library.list_books()
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "for_whom_the_bell_tolls",
        rental_details: {
          student_name: "",
          date: ""
        }
        }], result)

  end

  def test_change_rental_details()
    result = @library.change_rental_details("lord_of_the_rings", "Miguel", "Oct. 6")
    assert_equal({
            title: "lord_of_the_rings",
            rental_details: {
              student_name: "Miguel",
              date: "Oct. 6"
            }
            }, result)
  end

end
