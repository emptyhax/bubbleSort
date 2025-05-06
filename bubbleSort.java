public class bubbleSort {

    public static void bubbleSort(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {
            for (int j = 0; j < arr.length - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }

        }

    }

    public static void printArray(int[] arr) {

	    for (int i = 0; i < arr.length; i++) {
		System.out.print(arr[i] + " ");
	    }
	    System.out.println();
    }

    public static void main(String[] args) {
	int[] arr = {1, 22, 94, 8, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53};
	bubbleSort(arr);
	printArray(arr);
    }
  
}
