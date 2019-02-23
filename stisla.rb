require 'fileutils'

FileUtils.rm_r Dir['vendor/assets/stylesheets/*', 'vendor/assets/javascripts/*', 'vendor/assets/fonts/*', 'vendor/assets/img/*']

FileUtils.cp_r 'stisla/sources/scss/.', 'vendor/assets/stylesheets'
FileUtils.cp_r 'stisla/assets/js/.', 'vendor/assets/javascripts'
FileUtils.cp_r 'stisla/assets/fonts/.', 'vendor/assets/fonts'
FileUtils.cp_r 'stisla/assets/img/.', 'vendor/assets/img'

file_names = Dir['vendor/assets/stylesheets/**/*.scss']

file_names.each do |file_name|
  text = File.read(file_name)
  new_contents = text.gsub("url('../img/", "asset-url('")
  new_contents = new_contents.gsub('url("../img/', 'asset-url("')
  new_contents = new_contents.gsub("url('../fonts/", "asset-url('")
  new_contents = new_contents.gsub('url("../fonts/', 'asset-url("')
  File.open(file_name, "w") {|file| file.puts new_contents }
end

puts 'Yay! copying modules from Stisla was successfully done'
