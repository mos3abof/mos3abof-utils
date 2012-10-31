$filename = "urls.txt"
for URL in $(cut -d, -f2 < $filename); 
do     
    wget $URL; 
done
