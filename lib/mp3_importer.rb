class MP3Importer
  attr_accessor :path, :filenames 
  def initialize(path)
    @path = path 
  end 
  def files
    @filenames = Dir.chdir(@path) do |path|
      Dir.glob("*.mp3")
    end 
    @filenames
  end 
  def import
    @filenames.each do |filename| 
      Song.new_by_filename(filename)
    end 
  end 
end
