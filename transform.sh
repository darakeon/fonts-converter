#!/bin/bash

if [ ! -e files ]
then
    echo "docker run -it -v {{your-path-to-fonts}}:/var/fonts/files darakeon/fonts-converter"
    exit 1
fi

cd files

for FILE in *.woff
do
    woff2sfnt $FILE > ${FILE/'woff'/'otf'}
done
