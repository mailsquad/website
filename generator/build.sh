#!/bin/sh

rm -rf ../html/*
cp robots.txt ../html/
cp sitemap-index.xml ../html/

cd fr
hugo

cd ../en
hugo

cd ../../html/fr
rm -rf node_modules
rm -rf less
rm Gruntfile.js
rm package.json
mv style.css ../
mv video-js.css ../
mv ui-kit ../
mv videos ../
mv js ../
mv img ../
mv font ../
mv flat-ui ../
mv common-files ../

cd ../en
rm -rf node_modules
rm -rf less
rm Gruntfile.js
rm package.json
rm -rf style.css
rm -rf video-js.css
rm -rf ui-kit
rm -rf videos
rm -rf js
rm -rf img
rm -rf font
rm -rf flat-ui
rm -rf common-files

cd ../../generator