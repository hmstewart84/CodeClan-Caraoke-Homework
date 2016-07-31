class Room

  attr_reader :guests, :capacity, :songs

def initialize(capacity)
  @guests = []
  @capacity = capacity
  @songs = []

end  

def add_guest_to_room(guest)
  @guests << guest
end  

def remove_guest_from_room(guest)
  @guests.delete(guest)
end  

def add_song_to_room(song)
  @songs << song
end  

end  