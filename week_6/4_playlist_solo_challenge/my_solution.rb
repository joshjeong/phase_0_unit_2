# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution




# Refactored Solution
class Song
	def initialize(song_name, artist)
		@song_name= song_name
		@artist= artist
	end

end

class Playlist

  def initialize(track)
  	@track= track
  end

  def add
	@playlist_arr << @track
  end

  def play_all
  end

  def remove
  	@playlist_arr.delete_if {|x|= @track}
  end

  def display
    playlist_arr.each do |song, artist|
	p song- artist
  end


  def num_of_tracks
	playlist_arr.length
  end

end






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 