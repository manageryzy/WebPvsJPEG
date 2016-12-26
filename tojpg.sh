cd out
for((i=0;i<101;i++));
do
    convert -quality $i src.tiff out_$i.jpg > /dev/null & 
done
wait
cd ..