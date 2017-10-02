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

end
