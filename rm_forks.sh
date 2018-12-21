#!/bin/sh

url='https://api.github.com'
for x in $(cat forks.txt); do
    uri=$url/repos/dkrikun/$x
    curl -H "Authorization: bearer $(cat token)" $url/repos/$x -X DELETE
done
