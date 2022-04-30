#! /usr/bin/zsh

waybackurls $1  | grep -a -i \=http | qsreplace 'http://evil.com' | while read host do;do curl -s -L $host -I|grep "http://evil.com" && echo -e "$host \033[0;31mVulnerable\n" ;done
