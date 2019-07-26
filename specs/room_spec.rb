require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")

class TestRoom< MiniTest::Test

  def setup()
    @room1 = Room.new(101)
    @room2 = Room.new(237)
  end

  def test_number_of_guests()
    assert_equal(2, @guestcount.count)
  end

end
