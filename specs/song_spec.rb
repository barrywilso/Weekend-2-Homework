require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Iggy Pop", "Lust for life")
    @song2 = Song.new("David Bowie", "Heroes")
  end

  def test_song_name()
    assert_equal("Lust for life", @song1.song)
  end

end
