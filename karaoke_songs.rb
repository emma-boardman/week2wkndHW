require_relative'./karaoke_song'


class SongCatalogue


def initialize(songs)
    @songlist = songs
end

  def songs_by_genre(input_genre)
    result = @songlist.select {|song| song.genre == input_genre}
    result.map {|song| song.title}
  end

  def songs_by_artist(input_artist)
    result = @songlist.select {|song| song.artist == input_artist}
    result.map {|song| song.title}
  end


  # puts "What would you like to do?"
  # puts "-> (a)dd a song"
  # puts "-> (u)pdate a song"
  # puts "-> (d)isplay a song"
  # puts "-- (r)emove a song."
  
  # selection = gets.chomp.downcase
  # case selection
  # when 'a'
  #   puts "Please enter the artist of the song you wish to add"
  #   artist = gets.chomp
    




end

