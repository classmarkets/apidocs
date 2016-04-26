DEPS="node_modules chapters.txt html/apib.json html/intro.html"
while read c; do
    DEPS="$DEPS html/$c.html"
done < chapters.txt

redo-ifchange $DEPS
