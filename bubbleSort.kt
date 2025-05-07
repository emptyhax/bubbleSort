fun bubbleSort(arr: IntArray) {
    
    for (i in 0 until arr.size - 1) {
	for (j in 0 until arr.size - i - 1) {
            if (arr[j] > arr[j + 1]) {
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

fun main() {
    val arr = intArrayOf(1, 22, 94, 8, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53)
    bubbleSort(arr)
    println(arr.joinToString(", "))
}

