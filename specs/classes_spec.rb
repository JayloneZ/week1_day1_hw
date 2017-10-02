require('minitest/autorun')
require('minitest/rg')
require_relative('../classes.rb')

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Miguel", 16)
    @student2 = Student.new("Huascar", 16)
  end

  def test_name_changer()
    @student1.name_changer("Tony")
    assert_equal("Tony", @student1.name)
  end

end
