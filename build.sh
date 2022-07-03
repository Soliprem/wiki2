#!/bin/bash

for file in "$HOME"/vimwiki/*.md
do
  name=$(basename "$file" .md)
  pandoc --template "$HOME"/vimwiki/site/layout/default.html "$file" -o "$HOME"/vimwiki/site/"$name".html
done

