require 'pry'
require_relative "./concerns/memorable.rb"
require_relative "./concerns/findable.rb"
require_relative "./concerns/paramable.rb"

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::Classmethods
  extend Findable  
  include Paramable 
  include Memorable::Instancemethods

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
  
end
