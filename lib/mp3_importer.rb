

class MP3Importer
  attr_accessor :path, :filenames 
  def initialize(path)
    @path = path 
  end 
  @filenames = [] 
  def files
    newfiles = Dir.chdir(@path) do |path|
      Dir.glob("*.mp3")
    end 
    newfiles.each do |file|
      @filenames << file 
    end 
    @filenames
  end 
  def import
    @filenames.each do |filename| 
      Song.new_by_filename(filename)
    end 
  end 
end 
