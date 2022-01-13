#!/bin/sh
(
    rm tmp.txt

    # Should still write to tmp.txt
    ( : >&3 3>&- 4<&- )

    cat <&4
) 3>tmp.txt 4<tmp.txt
