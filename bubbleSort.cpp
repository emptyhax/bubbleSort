#include <iostream>
using namespace std;

void bubbleSort(int[] arr, int n) {
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }

  void printArray(int[] arr, int n) {
    for (int i = 0; i < n; i++) {
      cout << arr[i] << " ";
    }
    cout << endl
  }

  int main() {
    int arr[] = {1, 22, 94, 1, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53};
    int n = sizeof(arr) / sizeof(arr[0]);
    bubbleSort(arr, n) printArray(arr, n) return 0
  }
}

