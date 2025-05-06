function bubbleSort(arr)  {

for (let i=0; i<=arr.length - 1; i++) {

    for (let j=0; j<=arr.length - i - 1; j++) {
      if(arr[j] > arr[j + 1]) {
	[arr[j], arr[j+1]] = [arr[j+1], arr[j]]
     }	
   }
 }

   return arr 
}

console.log(bubbleSort([1, 22 , 94, 8, 14, 23, 9, 7, 104, 74, 0, 4, 64, 34, 91, 44, 53]))

