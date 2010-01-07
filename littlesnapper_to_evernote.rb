require 'rubygems'
require 'libxml'

class Evernote
  def new_note_from_file(file)
    puts "gonna create a note from file: " + file
  end
end

LS_LIBRARY = ARGV[0]

Dir.entries(LS_LIBRARY)[2..-1].each do |entry|
  Dir.chdir(LS_LIBRARY)
  if File::directory?(entry)
    snap_files  = Dir.entries(entry)
    other_files = snap_files.find_all {|f| !['info.plist','.','..'].include?(f)}

    Dir.chdir(entry)
    doc = XML::Document.file(Dir.pwd + '/info.plist')
    tags   = doc.find('/plist/dict/key[. = "tags"]/following-sibling::array/string').map{|x| x.content}.to_a
    rating = doc.find('/plist/dict/key[. = "rating"]/following-sibling::integer').first.content rescue 0
    date   = doc.find('/plist/dict/key[. = "date"]/following-sibling::date').first.content rescue Date.today.to_s
  end
end
