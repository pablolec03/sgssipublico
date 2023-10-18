cd md5_folder
for file in *.txt; do
   if echo "9e1cda999b728d2cd7c5ddb46a662522  $file" | md5sum -c --quiet; then
       echo "El archivo $file tiene el hash MD5 coincidente."
       cat $file
   fi
done
