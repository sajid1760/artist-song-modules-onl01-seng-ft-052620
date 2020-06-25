require 'pry'
require_relative "./concerns/memorable.rb"
require_relative "./concerns/findable.rb"
require_relative "./concerns/paramable.rb"

class Artist
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::Classmethods
  extend Findable  
  include Paramable 
  include Memorable::Instancemethods

  @@artists = []

  def initialize
    self.class.all << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
end
