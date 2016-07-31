require_relative ('./karaoke_booking_form')

class BookingRunner



  def initialize(booking)
    @booking = booking
  end 

  def get_desired_capacity()
  puts "How many guests will there be?"
  desired_capacity = gets.chomp
  


  end

end