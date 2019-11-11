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


#To run the command after some x time
sleep 30m && bash scripts/train.sh 
CUDA=1 sleep 30m && bash scripts/train.sh  #for gpu machines


#To get the content in real time
grep -f "string" filename.extension


#To monitor the downloading of files
sudo apt install nethogs
ifconfig
sudo  nethogs  # sudo  nethogs ens4


#basic commands in terminal
control + u = to cut the text left to the cursor
control + k = to cut the text right to the cursor
control + y = to paste the cut text

