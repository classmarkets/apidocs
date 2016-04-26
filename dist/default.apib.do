DEPS=../src/meta.apib
if [ "$2" != "intro" ]; then
    DEPS="$DEPS ../src/data-structures.apib"
fi
DEPS="$DEPS ../src/$2.apib"

redo-ifchange $DEPS

for i in $DEPS; do
    cat $i
    echo
done
