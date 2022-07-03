#!/bin/bash

for file in "$HOME"/vimwiki/*.md
do
  name=$(basename "$file" .md)
  pandoc --standalone --include-in-header "$HOME/vimwiki/site/css/style.scss" --metadata pagetitle="$name" --template "$HOME"/vimwiki/site/layout/default.html -f markdown "$file" -t html --katex -o "$HOME"/vimwiki/site/"$name".html
done

