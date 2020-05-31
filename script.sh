
for file in segregate_photos/*.jpg;
do
    year=$(echo $(basename $file) | cut -d- -f1)
    month=$(echo $(basename $file) | cut -d- -f2)
    pic_num=$(echo $(basename ${file%%.jpg}) | cut -d- -f3)
if [ ! -d "$year" ]; then
    mkdir "$year"
fi 

if [ ! -d "$year/$month" ];
then
 mkdir "$year/$month"
fi

mv "$file" "$year/$month/photos$pic_num"
done