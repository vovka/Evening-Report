#!/bin/bash

dir_name="`date +%Y-%m-%d`"
file_name="`date +%H:%M:%S`"
file_extension="png"
path=/home/vovka/Зображення/screenshots/daily_screenshots/$dir_name/
xwd_file=/tmp/$file_name.xwd
target_file=$path$file_name.$file_extension

xwd -display :0 -root > $xwd_file
mkdir -p $path
/usr/bin/convert $xwd_file $target_file
rm -f $xwd_file
