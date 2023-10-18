cd md5unzip
for file in *.txt; do
   if echo "hash  $file" | md5sum -c --quiet; then
       echo "El archivo $file tiene el hash MD5 coincidente."
       cat $file
   fi
done
