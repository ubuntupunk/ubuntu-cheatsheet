#! /usr/bin/env bash

# This BASH script generates different output files by calling pandoc

# check if pandoc is installed
if [[ `command -v pandoc` ]]
then
  # outputs the ubuntu cheat sheet as PDF file
  pandoc metadata.yaml ubuntu-cheatsheet.md -s -o ubuntu-cheatsheet.pdf

  # outputs the ubuntu cheat sheet as HTML (HTML5) file
  pandoc metadata.yaml ubuntu-cheatsheet.md -s -t html5+smart -o ubuntu-cheatsheet.html

  # outputs the ubuntu cheat sheet as plain text
  pandoc ubuntu-cheatsheet.md -s -t plain+smart -o ubuntu-cheatsheet.txt
else
  # pandoc is not installed inform the user
  echo "The command pandoc could not be found in the PATH!\n"
fi
