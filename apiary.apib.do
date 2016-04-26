DEPS="src/meta.apib src/intro.apib src/data-structures.apib"
while read c; do
    DEPS="$DEPS src/$c.apib"
done < chapters.txt

redo-ifchange $DEPS chapters.txt
for i in $DEPS; do
    cat $i
    echo
done
