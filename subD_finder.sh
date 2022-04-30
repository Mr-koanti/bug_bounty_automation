#! /usr/bin/bash

mkdir $1

cd $1

echo $1 |assetfinder -subs-only | tee ast.txt

echo $1 |subfinder | tee sub.txt

echo "----------------------------------------------------------Now Mearging the results---------------------------------------------"

cat ast.txt sub.txt | sort -u >> subdomains.txt

cat subdomains.txt | httpx --sc --cl -mc 200 >> alive.txt
