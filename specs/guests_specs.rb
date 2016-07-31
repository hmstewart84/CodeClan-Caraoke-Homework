require 'minitest/autorun'
require( 'minitest/rg' )
require_relative('../guests')

class TestGuests < Minitest::Test

  def setup

    @hannah = Guest.new("Hannah Stewart", "This Must Be The Place", 50)
    @gillian = Guest.new("Gillian McCabe", "Africa", 40)
    @charley = Guest.new("Charley Lawton", "One For Sorrow", 30)
    @katrina = Guest.new("Katrina Coutts", "Roar", 20)

  end

  def test_check_guest_name
    assert_equal("Hannah Stewart", @hannah.name())
  end  

  def test_check_guest_has_favourite_song
    assert_equal("Africa", @gillian.favourite_song())
  end  

  def test_check_guest_has_budget
    assert_equal(30, @charley.budget)
  end  

  def test_can_guest_afford_room
    assert_equal(false, @katrina.can_guest_afford_room)
  end 

end