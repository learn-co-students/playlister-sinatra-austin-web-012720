class Song < ActiveRecord::Base



belongs_to :artist
has_many :song_genres
has_many :genres, through: :song_genres

def slug
    self.name.split(' ').join('-') 
end

def self.find_by_slug(sluggified)
  song_title = sluggified.gsub('-',' ')
  Song.find_by(name: song_title)
end

end