def classic_bubble_sort(arr)
  n = arr.length
  for i in 0...n
    for j in 0...(n - 1 - i)
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
end

def optimized_bubble_sort(arr)
  n = arr.length
  swapped = true
  while swapped
    swapped = false
    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    n -= 1
  end
end

def recursive_bubble_sort(arr, n = arr.length)
  return arr if n <= 1
  (n-1).times do |i|
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
  end
  recursive_bubble_sort(arr, n-1)
end

def while_bubble_sort(arr)
  n = arr.length
  i = 0
  while i < n
    j = 0
    while j < n - i - 1
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
      j += 1
    end
    i += 1
  end
end

test_array = [13, 45, 67, 23, 89, 12, 56, 78, 34, 90, 22, 66, 44, 18, 93, 50, 11, 99, 31, 74, 59]
puts "Original array:"
puts test_array.inspect

classic_array = test_array.dup
classic_bubble_sort(classic_array)
puts "\nClassic Bubble Sort:"
puts classic_array.inspect

optimized_array = test_array.dup
optimized_bubble_sort(optimized_array)
puts "\nOptimized Bubble Sort:"
puts optimized_array.inspect

recursive_array = test_array.dup
recursive_bubble_sort(recursive_array)
puts "\nRecursive Bubble Sort:"
puts recursive_array.inspect

while_array = test_array.dup
while_bubble_sort(while_array)
puts "\nWhile Loop Bubble Sort:"
puts while_array.inspect