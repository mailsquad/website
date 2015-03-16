#!/bin/sh

rm -rf ../html/*

cd fr
hugo

cd ../../html/fr
rm -rf node_modules
rm -rf less
rm Gruntfile.js
rm package.json
mv robots.txt ../
mv style.css ../
mv video-js.css ../
mv ui-kit ../
mv videos ../
mv js ../
mv img ../
mv font ../
mv flat-ui ../
mv common-files ../

cd ../../generator