#! /usr/bin/env bash

# This BASH script generates different output files by calling pandoc

# check if pandoc is installed
if [[ `command -v pandoc` ]]
then
  # outputs the linux cheat sheet as PDF file
  pandoc metadata.yaml linux-cheatsheet.md -s -o linux-cheatsheet.pdf

  # outputs the linux cheat sheet as HTML (HTML5) file
  pandoc metadata.yaml linux-cheatsheet.md -s -t html5+smart -o linux-cheatsheet.html

  # outputs the linux cheat sheet as plain text
  pandoc linux-cheatsheet.md -s -t plain+smart -o linux-cheatsheet.txt
else
  # pandoc is not installed inform the user
  echo "The command pandoc could not be found in the PATH!\n"
fi
