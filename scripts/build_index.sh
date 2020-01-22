#!/bin/bash

# Generate js file index of all named 


echo "const FACE_DIR = 'img/faces/';" > js/nameIndex.js

echo "" >> nameIndex.js

ls img/faces | perl -e 'use JSON; @in=grep(s/\n$//, <>); print "const FACES = ".encode_json(\@in)."\n";' >> js/nameIndex.js
