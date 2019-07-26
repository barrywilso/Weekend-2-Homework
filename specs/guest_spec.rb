require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Donald Trump")
    @guest2 = Guest.new("Boris Johnson")
  end

  def test_get_guest_name()
    assert_equal("Donald Trump", @guest1.name)
  end


end
