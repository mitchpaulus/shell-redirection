#!/bin/sh
exec 3>tmp.txt
exec 4<tmp.txt

rm tmp.txt

# Should still write to tmp.txt
( : >&3 3>&- 4<&- )

cat <&4
