
require 'fileutils'

FileUtils.rm_r Dir['vendor/assets/stylesheets/*', 'vendor/assets/javascripts/*', 'vendor/assets/fonts/*', 'vendor/assets/img/*']

FileUtils.cp_r 'stisla/sources/scss/.', 'vendor/assets/stylesheets'
FileUtils.cp_r 'stisla/assets/js/.', 'vendor/assets/javascripts'
FileUtils.cp_r 'stisla/assets/fonts/.', 'vendor/assets/fonts'
FileUtils.cp_r 'stisla/assets/img/.', 'vendor/assets/img'

# `sed -i "s|url('../img/|asset-url('|g" vendor/assets/stylesheets/**/*.scss`
# `sed -i 's|url("../img/|asset-url("|g' vendor/assets/stylesheets/**/*.scss`
#
# `sed -i "s|url('../fonts/|asset-url('|g" vendor/assets/stylesheets/**/*.scss`
# `sed -i 's|url("../fonts/|asset-url("|g' vendor/assets/stylesheets/**/*.scss`

puts 'Yay! copying modules from Stisla was successfully done'
