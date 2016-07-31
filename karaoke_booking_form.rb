require_relative('karaoke_room')

class BookingForm

  def initialize (input_rooms)
    @rooms = input_rooms
  end

  def room_cap(input_room_number)
  room_to_check = @rooms.find {|room|  room.room_num == input_room_number}
      return room_to_check.room_cap
  end

  def get_rooms_of_specified_capacity(input_capacity)
   result = @rooms.select {|room| room.room_cap >= input_capacity}
   result.map {|room| room.room_num}
  end



end

  # def room_cap(room_number)
  #    room_capacity = @rooms.select {|room| room.room_cap >= pet_price}
      #result.length

#   # [1, 2, 3].map { |n| n * n } #=> [1, 4, 9]


#   def get_names_of_all_pets_of_type(pet_type)
#     result = @pets.select {|pet| pet.type == pet_type}
#     result.map {|pet| pet.name}
#   end

#   #(@pets.select {|pet| pet.type == pet_type}).map {|pet| pet.name

# #@pets.map do |pet|
# # pet.name if pet.type == type


#   def get_number_of_pets_costing_at_least(pet_price)
#       result = @pets.select {|pet| pet.price >= pet_price}
#       result.length
      
#       # pets = result.map {|pet| pet.price}.length
#   end

# # def get_names_of_all_pets_of_type(pet_type)
# #   pets_by_type = @pets.map do |pet|  
# #     pet.name if pet.type == pet_type
# #   end
# #   return pets_by_type.compact
# #   end 

# end