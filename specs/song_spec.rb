require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSongs< MiniTest::Test

  def setup()
    @song1 = Song.new("Boomtown Rats", "Tell me why I dont like Mondays")
    @song2 = Song.new("David Bowie", "Heroes")
  end


  def test_song_name()
    assert_equal("Tell me why I dont like Mondays", @song1.name)
  end


end
