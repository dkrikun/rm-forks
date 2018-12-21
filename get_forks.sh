#!/bin/sh

url='https://api.github.com/graphql'
query=$(cat get_forks.graphql | sed 's/"/\\"/g')
echo "{\"query\": \"${query}\"}" > get_forks.json

curl -H "Authorization: bearer $(cat token)" -H "Content-Type: application/json" -d @get_forks.json $url > forks.json
