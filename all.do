DEPS="node_modules chapters.txt dist/apib.json dist/intro.html dist/tree.html"
while read c; do
    DEPS="$DEPS dist/$c.html"
done < chapters.txt

redo-ifchange $DEPS
