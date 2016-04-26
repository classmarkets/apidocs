DEPS="intro.html"
while read c; do
    DEPS="$DEPS $c.html"
done < ../chapters.txt

redo-ifchange $DEPS ../chapters.txt ../extract-nav.js

(
echo "<nav>"
for i in $DEPS; do
    node ../extract-nav.js $i
done
echo "</nav>"
) > $3

redo-stamp < $3
