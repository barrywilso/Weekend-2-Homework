require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong< MiniTest::Test

  def setup()
    @song1 = Song.new("Iggy Pop", "Lust for life")
    @song2 = Song.new("David Bowie", "Heroes")
  end

  def test_song_name()
    assert_equal("Lust for life", @song1.name)
  end

end
