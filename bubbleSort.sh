#!/bin/bash

bubble_sort() {
    local -n arr_ref="$1"
    local n=${#arr_ref[@]} 
    local i j temp
    local swapped 

    if (( n < 2 )); then
        return
    fi

    for (( i=0; i < n-1; i++ )); do
        swapped=0 

        for (( j=0; j < n-i-1; j++ )); do
            if (( arr_ref[j] > arr_ref[j+1] )); then
                temp=${arr_ref[j]}
                arr_ref[j]=${arr_ref[j+1]}
                arr_ref[j+1]=$temp
                swapped=1
            fi
        done

        if (( swapped == 0 )); then
            break
        fi
    done
}

array=(5 1 4 2 8 0 9 3 7 6 -1 100 55)
echo "Array original: ${array[@]}"

bubble_sort array
echo "Array ordenado: ${array[@]}"

