find ./out -name "out_*.webp"| parallel  convert {} {}.bmp > /dev/null
# find ./out -name "out_*.jpg" | parallel convert {} {}.bmp > /dev/null
