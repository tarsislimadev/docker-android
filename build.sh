
if [[ -z "$@" ]]; then
TAGS="30 ionic"
else
TAGS="$@"
fi

for tag in $TAGS; do

echo
echo
echo --- TAG $tag ---
echo

cd $tag
docker build -t tmvdl/android:$tag .
cd ..

echo
echo --- TAG $tag OK ---
echo
echo

done
