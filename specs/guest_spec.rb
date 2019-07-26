require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Donald Trump")
  end

  def test_get_guest_name()
    assert_equal("Donald Trump", @guest1.name)
  end


end
