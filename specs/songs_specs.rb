require 'minitest/autorun'
require( 'minitest/rg' )
require_relative('../songs')


class TestSong < Minitest::Test

  def setup

    @indaclub = Song.new("In Da Club", "50 Cent")

  end  

  def test_song_has_name
    assert_equal("In Da Club", @indaclub.name)
  end  

  def test_song_has_artist
    assert_equal("50 Cent", @indaclub.artist)
  end  

end  


