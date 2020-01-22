#!/bin/bash

cd img/f;
n=1;
for f in *;
do
  name=`shuf -n 1 ../../txt/female-first-names.txt`
  mv "$f" "$name.jpg";
done
