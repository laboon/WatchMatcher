
perl concat.pl $1 > $1/temp.txt
perl getAsins.pl $1/temp.txt > $1/asins.csv
perl collate.pl $1/asins.csv $1/images
./convAllToGif.sh $1/images

