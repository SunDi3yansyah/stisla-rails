#!/bin/bash

rm -rf vendor/assets/{stylesheets/*,javascripts/*,fonts/*,img/*}

cp -R stisla/sources/scss/* vendor/assets/stylesheets
cp -R stisla/dist/assets/js/* vendor/assets/javascripts
cp -R stisla/dist/assets/fonts/* vendor/assets/fonts
cp -R stisla/dist/assets/img/* vendor/assets/img

sed -i "s|url('../img/|asset-url('|g" vendor/assets/stylesheets/**/*.scss
sed -i 's|url("../img/|asset-url("|g' vendor/assets/stylesheets/**/*.scss

sed -i "s|url('../fonts/|asset-url('|g" vendor/assets/stylesheets/**/*.scss
sed -i 's|url("../fonts/|asset-url("|g' vendor/assets/stylesheets/**/*.scss

echo "Yay! copying modules from Stisla was successfully done"
