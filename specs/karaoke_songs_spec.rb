require 'minitest/autorun'
require 'minitest/rg'
require_relative '../karaoke_songs'
require('pry-byebug')

class TestKaraokeSongs < Minitest::Test

  def setup

  song001 = Song.new("Meat Loaf", "Life is a Lemon", :rock)
  song002 = Song.new("Motley Crue", "Girls Girls Girls", :rock)
  song003 = Song.new("Def Leppard", "Hysteria", :rock)
  song004 = Song.new("Cyndi Lauper", "Drove All Night", :pop)
  song005 = Song.new("Duran Duran", "Wild Boys", :pop)
  song006 = Song.new("Duran Duran", "Rio", :pop)

  songs = [song001, song002, song003, song004, song005, song006]
      
  @song_catalogue = SongCatalogue.new(songs)
        
  end
 
def test_find_all_songs_by_genre
  result = @song_catalogue.songs_by_genre(:rock)
     assert_equal(["Life is a Lemon", "Girls Girls Girls", "Hysteria"], result)
  end

def test_find_all_songs_by_artist
  result = @song_catalogue.songs_by_artist("Duran Duran")
  assert_equal(["Wild Boys", "Rio"], result)
end

# def test_total_artist_count
#     count = @songlist.artist()
#     assert_equal(5, count)
# end

# def test_all_songs_by_genre
#   result = songs_by_genre(@songs, "Rock")
#   assert_equal(result.count)
# end


# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal(pet[:name], "Arthur")
# end



end 