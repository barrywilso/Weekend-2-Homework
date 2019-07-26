require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom< MiniTest::Test

  def setup()
    @room1 = Room.new(101)
    @room2 = Room.new(237)
    @guest1 = Guest.new("Donald Trump")
    @guest2 = Guest.new("Boris Johnson")
    @guest3 = Guest.new("Theresa May")
    @song1 = Song.new("The Beatles", "A day in the life")
    @song2 = Song.new("Nina", "99 Red Balloons")
    @song3 = Song.new("Aha", "Take on me")
    @song4 = Song.new("Simple Minds", "New Gold Dream")
  end

  def test_check_room_number()
    assert_equal(101, @room1.number)
  end

  def test_check_guests_in_room()
    assert_equal(0, @room1.guests_total)
  end

  def test_add_guest()
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests_total)
  end

  def test_remove_guest()
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.remove_guest(@guest1)
    assert_equal(2, @room1.guests_total)
  end

  def test_check_songs_in_album()
    assert_equal(0, @album.songs_total)
  end

  def test_add_song()
    @room1.add_song(@song3)
    assert_equal(1, @album.songs_total)
  end

end
