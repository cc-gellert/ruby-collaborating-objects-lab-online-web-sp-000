require 'pry'

class MP3Importer
  attr_accessor :path, 
  def initialize(path)
    @path = path 
  end 
  def files
    Dir.entries(@path, encoding:".mp3") 
    #do |path|
      #Dir.glob("*.mp3")
    #end 
  end
  binding.pry 
  def import
    files.each do |filename| 
      Song.new_by_filename(filename)
    end 
  end 
end 
