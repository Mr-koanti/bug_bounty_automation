#! /usr/bin/zsh

mkdir $1

cd $1

subfinder -d $1  | httpx -mc 200 -o sub.txt

echo $1 |assetfinder -subs-only | tee ast.txt

cat sub.txt ast.txt | sort -u >> subdomains.txt

cat subdomains.txt | waybackurls | tee -a urls.txt

gf sqli urls.txt >> sqli


