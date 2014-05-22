#!/bin/bash

echo "**** CREATING PROJECT ****"

ember init $1
cd "$1"
bower install
bower install --save bootstrap
npm install --save-dev broccoli-coffee
npm install --save-dev broccoli-ember-script
npm install --save-dev broccoli-emblem-compiler
npm install --save-dev broccoli-stylus-single	

echo ""
echo "INSERTING following lines into Brocfile.js"
echo "--> app.import('vendor/bootstrap/dist/js/bootstrap.js');"
echo "--> app.import('vendor/bootstrap/dist/css/bootstrap.css');"
sed -i "" -e $'32 a\\\n'"app.import('vendor/bootstrap/dist/js/bootstrap.js');" Brocfile.js
sed -i "" -e $'33 a\\\n'"app.import('vendor/bootstrap/dist/css/bootstrap.css');" Brocfile.js
echo "done"
echo ""

echo "add the following to /app/index.html"
echo "-->     <link rel=\"stylesheet\" href=\"assets/vendor.css\">"
sed -i "" -e $'11 a\\\n<link rel="stylesheet" href="assets/vendor.css">' app/index.html

echo ""
echo "change /app/styles/app.css to /app/sytles/app.styl"
mv "app/styles/app.css" "app/styles/app.styl"
	
echo ""
echo ""
echo "**** EMBER PROJECT CREATED ****"
echo "**** FINISHED! HAPPY CODING. BYE BYE. ****"	