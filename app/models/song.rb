class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    a = Artist.find_by(id: self.artist_id)
    a.name
  end
end
