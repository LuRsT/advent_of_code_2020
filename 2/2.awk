#!/bin/awk -f

{
    index_true = $1
    index_false = $2
    char = $3
    str = $4

    if (substr(str, index_true, 1) == char) {
        if (substr(str, index_false, 1) != char) {
            printf $4 "\n";
        }
    }
    else {
        if (substr(str, index_false, 1) == char) {
            printf $4 "\n";
        }
    }
}
