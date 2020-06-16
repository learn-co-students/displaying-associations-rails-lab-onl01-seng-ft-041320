
class Song < ActiveRecord::Base
  
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  # def artist_name_and_title
  #   artist_name + " - " + self.title
  # end

  #add this to song/index/html.erb:  <li><%= link_to song.artist_name_and_title, song_path(song) %></li><br>

end
