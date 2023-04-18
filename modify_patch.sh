Bash script that modifies a word in the comments inside a 
#patch file and also appends the datetime at the modification time
#Jose Francisco Saldivar Ceniceros

#! /usr/bin/bash

filename="diff_patch.patch"
old="Greetings"
new="Best regards"
sed -i "s/$old/$new/" $filename
dt=$(date)
echo $dt >> diff_patch.patch
