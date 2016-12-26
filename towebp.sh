cd out
for((i=0;i<101;i++));
do
    cwebp -q $i src.tiff -o out_$i.webp >/dev/null &
done
wait
cd ..