require 'minitest/autorun'
require( 'minitest/rg' )
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRoom < Minitest::Test

  def setup
    
    @hannah = Guest.new("Hannah Stewart", "This Must Be The Place", 50)
    @gillian = Guest.new("Gillian McCabe", "Africa", 40)
    @charley = Guest.new("Charley Lawton", "One For Sorrow", 30)
    @katrina = Guest.new("Katrina Coutts", "Roar", 20)

    @room_1 = Room.new(4)
   
    @song1 = Song.new("In Da Club", "50 Cent")

  end  

  def test_room_capacity
    assert_equal(4, @room_1.capacity)
  end  

  def test_can_add_guest_to_room
    @room_1.add_guest_to_room(@hannah)
    assert_equal([@hannah], @room_1.guests)
  end 

  def test_can_remove_guest
    @room_1.add_guest_to_room(@hannah)
    @room_1.remove_guest_from_room(@hannah)
    assert_equal([], @room_1.guests)
  end  

  def test_add_song_to_room
    @room_1.add_song_to_room(@song1)

    # songs_array = @room_1.songs
    # my_song = songs_array[0]
    # song_name = my_song.name

     still_the_song_name = @room_1.songs[0].name
    assert_equal("In Da Club", still_the_song_name)
  end  

end  

