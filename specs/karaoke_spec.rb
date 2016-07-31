require ('minitest/autorun')
require('minitest/rg')
require_relative ('../karaoke_room')
require_relative ('../karaoke_booking_form')
require('pry-byebug')

class TestKaraokeBookings < Minitest::Test

  def setup
    room_1 = Room.new("Room 1", 3)
    room_2 = Room.new("Room 2", 5)
    room_3 = Room.new("Room 3", 7)
    room_4 = Room.new("Room 4", 9)
    room_5 = Room.new("Room 5", 11)
  

    rooms = [room_1, room_2, room_3, room_4, room_5]
    
    @booking_form = BookingForm.new(rooms)
      
  end

 def test_room_1_capacity
   room_1_cap = @booking_form.room_cap("Room 1")
   assert_equal(3, room_1_cap)
 end

  def test_get_rooms_of_specified_capacity
     rooms_of_cap = @booking_form.get_rooms_of_specified_capacity(7)
    assert_equal(["Room 3", "Room 4", "Room 5"], rooms_of_cap)
  end

 

end






















# # require('minitest/autorun')
# # require('minitest/rg')
# # require_relative('../karaoke_room.rb')
# # require_relative('../songs.rb')

# # class KaraokeTest < Minitest::Test

# # def setup 
# # @rooms = Rooms.new("Room 1", "Comfortable capacity", 5)
# # # { "Room 1" =>
# # #    { "Luxury capacity" => 3,
# # #      "Comfortable capacity" => 5,
# # #      "Maximum capacity" => 7,
# # #      }
# # # },
# # @songs = Songs.new("Meat Loaf", "Life is a Lemon", "Rock")
# # end

# # def test_room_capacity_returns()
# #   assert_equal(5, @rooms.capacity_check("Room 1", "Comfortable Capacity"))

# end

# def test_song_returned_by_genre()
#   assert_equal("Meat Loaf", "Life is a Lemon", @songs.return_all_of_specified_genre("Rock"))
# end 



