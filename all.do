DEPS="node_modules chapters.txt dist/apib.json dist/intro.html"
while read c; do
    DEPS="$DEPS dist/$c.html"
done < chapters.txt

DEPS="$DEPS dist/tree.html"

redo-ifchange $DEPS
