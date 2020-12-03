#!/bin/awk -f

{
    min = $1
    max = $2
    char = $3
    str = $4

    gsub("[^" $3 "]", "", str)
    len = length(str)
    if (len >= min) { if (len <= max) { printf $4 "\n"; }}
}
