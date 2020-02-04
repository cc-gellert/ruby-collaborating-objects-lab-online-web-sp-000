require 'pry'

class MP3Importer
  attr_accessor :path, 
  def initialize(path)
    @path = path 
  end 
  @filenames = [] 
  def files(path)
    Dir.chdir(@path) do |path|
      Dir.glob("*.mp3")
    end 
  end 
  binding.pry 
  def import(path)
    files.each do |filename| 
      Song.new_by_filename(filename)
    end 
  end 
end 
