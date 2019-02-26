#To See dish size
df -h

#To see folder size 
du -sh foldername/

#Finding & Changing the text in a file
sed 's/old_text/new_text/g' * 
sed -i 's/old_text/new_text/g' * 

#For copying all images recursive folder to output folder
find train/ -name "*.jpg" -exec cp '{}' ./all_images/ \;
cp find source_foldername/ -name "*.jpg" destination_foldername/

# For converting all to jpg formats
for i in *.jpg ; do convert "$i" "${i%.*}.jpg" ; done

#For counting empty files
find folder_name -empty -type f | wc -l

#Difference between two files
diff <(cd AIMVAS_ABOD/; ls) <(cd images_annotated/; ls)

#search a string 
grep -r  '<name>2</name>' Annotations/  
find enrolled_multiples/ -name '*.jpg' 
find Annotations/ -type f | xargs grep -l '<name>2</name>' | wc                                
find Annotations/ -type f | xargs grep -l '<name>131</name>' | wc  

#For moving n files
mv `ls | head -1500` ../crop_2000/


#To Check port details
ps -aef | grep mysql  (to check on which port mysql is running)
Kill -9 port-number (to kill that port)
#Remove 
rm *.gif *.bmp
mogrify -format jpg *.png
rm *.png

#Rename
rename 's/\.jpe?g$/.jpg/i' *
rename 's/\.JPG?g$/.jpg/i' *

# Remove all spaces from the filenames
for file in *.jpg; do mv "$file" $(echo $file | sed 's/ /R/g') ; done

# Remove all spaces from the filenames
for file in *.jpg; do mv "$file" $(echo $file | sed 's/-/R/g') ; done




