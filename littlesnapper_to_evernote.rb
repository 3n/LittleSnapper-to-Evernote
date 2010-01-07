require 'rexml/document'

class Evernote
  def new_note_from_file(file)
    puts "gonna create a note from file: " + file
  end
end

LS_LIBRARY = ARGV[0]

Dir.chdir(LS_LIBRARY)

Dir.entries(LS_LIBRARY)[2..-1].each do |entry|
  puts Dir.entries(entry) if File::directory?(entry)
  puts "---"
end