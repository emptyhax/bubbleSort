using System;

class Program {
  static void bubbleSort(int[] arr) {
    for (int i=0; i < arr.Length - 1; i++) {
      for (int j=0; j < arr.Length - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] =e:;
        }
      }
    }
  }
  static void Main(string[] args) {

    int[] arr = { 1, 22, 94, 1, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53 };
    bubbleSort(arr);
    Console.WriteLine(string.Join(", ", arr));
  }
}

