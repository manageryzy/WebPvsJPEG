rm -rf out
mkdir out
cp src.tiff out/
./towebp.sh
./tojpg.sh
./tobmp.sh
rm -f out/src.tiff
convert src.tiff src.png
cwebp src.tiff -lossless -alpha_cleanup -o src.webp