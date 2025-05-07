fn bubbleSort(arr: &mut[i32]) {
    let n = arr.len();

    for i in 0..n {
        for j in 0..(n - 1 - i ) {
            if arr[j] > arr[j+1] {
                let temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
            }
        }
    }
}

fn main() {
 let mut arr = [13, 45, 67, 23, 89, 12, 56, 78, 34, 90, 22, 66, 44, 18, 93, 50, 11, 99, 31, 74, 59];

 bubbleSort(&mut arr);
 println!("{:?}", arr);

}
