#!/bin/bash

# Generate js file index of all named 


echo "const MALE_DIR = 'img/m/';" > js/nameIndex.js
echo "const FEMALE_DIR = 'img/m/';" >> js/nameIndex.js
echo "" >> nameIndex.js

ls img/m | perl -e 'use JSON; @in=grep(s/\n$//, <>); print "const MALES = ".encode_json(\@in)."\n";' >> js/nameIndex.js

ls img/f | perl -e 'use JSON; @in=grep(s/\n$//, <>); print "const FEMALES = ".encode_json(\@in)."\n";' >> js/nameIndex.js
