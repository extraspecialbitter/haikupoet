#!/bin/bash

./drop_table_2002.rb
for i in `ls -1 ~/git/haiku_search/data/archive_2002/[0-9]???.html`
do
  ./extract_haiku.rb ${i}
  cp snippet.txt qwert.txt
  sed  '/^Received\ on/,$d' snippet.txt > qwert.txt
  sed  '/^Paul\ David\ Mena/,$d' qwert.txt > snippet.txt
  sed  '/-Paul/,$d' snippet.txt > qwert.txt
  sed  '/- Paul/,$d' qwert.txt > snippet.txt
  sed  '/^========================/,$d' snippet.txt > qwert.txt
  sed  '/^------------------------/,$d' qwert.txt > snippet.txt 
  sed  '/^________________________/,$d' snippet.txt > qwert.txt
  ./insert_haiku_from_file_into_table_2002.rb qwert.txt
done
rm -rf snippet.txt qwert.txt
