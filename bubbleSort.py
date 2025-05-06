def bubbleSort(arr):
    for i in range(len(arr)):
        for j in range(len(arr) - i - 1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

print(bubbleSort([1, 22, 94, 8, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53]))
