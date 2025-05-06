#include <iostream>
using namespace std;

void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

void printArray(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
}

int main() {
    int arr[] = {13, 45, 67, 23, 89, 12, 56, 78, 34, 90, 22, 66, 44, 18, 93, 50, 11, 99, 31, 74, 59, 88, 60, 72, 39, 27, 49, 82, 35, 69, 36, 85, 25, 46, 76, 63, 54, 37, 28, 47, 64, 83, 40, 55, 21, 62, 48, 51, 77, 58, 42, 68, 41, 53, 79, 30, 71, 86, 73, 65, 32, 29, 38, 84, 70, 26, 52, 57, 19, 64, 80, 24, 33, 75, 61, 43, 14, 17, 65, 18, 59, 16, 53, 92, 28, 69, 66, 13, 75, 20, 98, 15, 5, 56, 50, 45, 12, 61, 9, 94, 33, 57, 24, 23, 85, 41, 97, 60, 3, 82, 8, 100, 7, 84, 32, 20, 49, 91, 2, 10};
    
    int n = sizeof(arr) / sizeof(arr[0]);
    
    cout << "Original array: ";
    printArray(arr, n);
    
    bubbleSort(arr, n);
    
    cout << "Sorted array: ";
    printArray(arr, n);
    
    return 0;
}

