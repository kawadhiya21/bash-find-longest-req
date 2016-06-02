grep -B1 \
`awk '/Completed/' $1 | \
awk 'BEGIN { FS=":Completed" } { print $2 }' | \
awk 'BEGIN { FS="in" } { print $2}' | \
awk 'BEGIN {FS="("} { split($1, a, "ms"); print a[1]; }' | \
sort -n | \
tail -1` \
$1