require 'stisla/rails'

module StislaRails
  class FontawesomeGenerator < Rails::Generators::Base
    source_root File.expand_path(Rails.root + 'node_modules', __dir__)

    def install
      copy_file '@fortawesome/fontawesome-free/css/all.css', Rails.root.join('app', 'assets', 'stylesheets', 'lib', 'fontawesome.scss')
      directory '@fortawesome/fontawesome-free/webfonts', Rails.root.join('app', 'assets', 'fonts')

      file_name = Rails.root.join('app', 'assets', 'stylesheets', 'lib', 'fontawesome.scss')
      text = File.read(file_name)
      contents = text.gsub("url('../webfonts/", "font-url('")
      contents = contents.gsub('url("../webfonts/', 'font-url("')
      File.open(file_name, "w") {|file| file.puts contents }
    end
  end
end
