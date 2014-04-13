#!/bin/bash -ex
convert "$1" -bordercolor white -border 0 \( -clone 0 -resize 32x32 \) \( -clone 0 -resize 32x32 \) \( -clone 0 -resize 48x48 \) \( -clone 0 -resize 64x64 \) -delete 0 -alpha off -colors 256 favicon.ico
convert "$1" -bordercolor white -border 0 \( -clone 0 -resize 128x128 \) -delete 0 -alpha off favicon.png
convert "$1" -bordercolor white -border 0 \( -clone 0 -resize 57x57 \) -delete 0 -alpha off images/apple-touch-icon-precomposed.png
convert "$1" -bordercolor white -border 0 \( -clone 0 -resize 72x72 \) -delete 0 -alpha off images/apple-touch-icon-72x72-precomposed.png
convert "$1" -bordercolor white -border 0 \( -clone 0 -resize 114x114 \) -delete 0 -alpha off images/apple-touch-icon-114x114-precomposed.png
convert "$1" -bordercolor white -border 0 \( -clone 0 -resize 144x144 \) -delete 0 -alpha off images/apple-touch-icon-144x144-precomposed.png
