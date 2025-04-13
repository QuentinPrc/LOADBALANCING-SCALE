#!/bin/bash

for i in {1..10}; do
  echo "Requête $i:"
  curl -s http://figaro.localhost | grep Hostname
  sleep 1
done
