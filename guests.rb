class Guest

  attr_reader :name, :favourite_song, :budget, :entry_fee

  def initialize(input_name, input_favourite_song, input_budget)

    @name = input_name
    @favourite_song = input_favourite_song
    @budget = input_budget
    @entry_fee = 25

  end

  def can_guest_afford_room(budget)
    if @guests.budget >= @entry_fee
      return true
    else
    return false
    end  
  end  

end  