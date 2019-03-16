require 'pry'

class Song

    attr_accessor :name, :artist_name

    @@all = []

    def initialize(name = nil)
      @name = name
      @@all << self
    end


    def self.all
      @@all
    end


def self.create
    song = self.new
    @@all << song
    song
end

def self.new_by_name(name)
  song = self.new(name)
  song
end

def self.create_by_name(name)
  song = self.new(name)
  @@all << song
  song
end

def self.find_by_name(tip)
  @@all.select { |song| tip == song.name }.pop
end

def self.find_or_create_by_name(tip)
  self.find_by_name(tip) ? false : self.create_by_name(tip)
end

binding.pry
puts "SKSK"
end



















# require 'pry'
#
# class Song
#
#   attr_accessor :name, :artist_name
#
#   @@all = []
#   @@i = 1
#   def self.all
#     @@all
#   end
#
#   def save
#     self.class.all << self
#   end
#
#   def self.create
#     song = self.new
#     @@all << song
#
#     song
#   end
#
#   def self.new_by_name(title)
#    song = self.create
#    song.name = title
#    song
#   end
#
#   def self.create_by_name(name)
#     song = self.create
#     song.name = name
#     song
#   end
#
#   def self.find_by_name(search)
#     Song.all.select{ |i|  i.name == search  }.pop
#   end
#
#   def self.find_or_create_by_name(finder)
#     Song.all.find{ |i|  i.name == finder  } ? song.create_by_name(finder) : false
#     self.find_by_name(name)
#   end
#
# def self.alphabetical
#   @@all
#   # binding.pry
#   # puts "VJNNF"
# end
#
# end
