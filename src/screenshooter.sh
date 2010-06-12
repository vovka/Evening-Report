#!/bin/bash

file_name="`date +%Y-%m-%d_%H:%M:%S`"
file_extension="png"
path=/home/vovka/Зображення/screenshots/daily_screenshots/
xwd_file=/tmp/$file_name.xwd
target_file=$path$file_name.$file_extension

xwd -display :0 -root > $xwd_file
/usr/local/bin/convert $xwd_file $target_file
rm -f $xwd_file

