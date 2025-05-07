fn bubbleSort(arr: @mut[i32]) {
    let n = arr.len();

    for i in 0..n {
        for j in 0..(n - 1 - i ) {
            if (arr[j] > arr[j+1]) {
                let temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
            }
        }
    }
}
