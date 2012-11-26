cd $1
for file in *.jpg
do
   name=${file%\.*}
   convert $file -thumbnail 190x246! ${name}.pgm
done
