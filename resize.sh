#!/bin/bash
echo "Script per compressione e resize immagini."
pwd

in="/optimize/in";
out="/optimize/out";
defaultQuality="30-50";
defaultPercResize="30%";

#read user input
read -p "Range quality compression (default 30-50). Blank for default: " quality
read -p "% resize (default 30%). Blank for default: " perc

#set correct variable
if [ -z "$quality" ]
then
  quality=$defaultQuality
fi

if [ -z "$perc" ]
then
  perc=$defaultPercResize
fi

echo $in
echo $out
echo $quality
echo $perc

cd $out
rm *.png
cd $in
for f in $(find . -type f -name "*.png" | sed 's/.*\///')
do
    pngquant --quality=$quality $f --output $out/$f
    magick $out/$f -resize $perc $out/$f
    echo "compressed and resized "$f
done
