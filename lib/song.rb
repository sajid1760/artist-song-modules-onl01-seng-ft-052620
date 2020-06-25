require 'pry'
require_relative "./concerns/memorable.rb"
require_relative "./concerns/findable.rb"
require_relative "./concerns/paramable.rb"

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable
  extend Findable
  include Paramable

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
  
end
