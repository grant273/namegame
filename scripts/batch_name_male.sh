#!/bin/bash

cd img/m;
n=1;
for f in *;
do
  name=`shuf -n 1 ../../txt/male-first-names.txt`
  mv "$f" "$name.jpg";
done
