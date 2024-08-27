#!/bin/bash
function renameFile {
   txts=$(find $1 -type f -name "*.txt")
   for file in $txts; do
      dirfile=$(dirname $file)
      basefile=$(basename $file) 
      mv  $file "$dirfile/old_$basefile";
   done
}
read -p "Enter your path to dir \ " dir
if [[ -d $dir ]] then 
 renameFile $dir
else  
   echo "Wrong! you should enter path of valid dir"
fi

