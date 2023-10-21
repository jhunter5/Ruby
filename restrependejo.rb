def counting_sort(array)
  # Find the maximum value in the array
  max_value = array.max

  # Create a new array to store the counts of each value
  counts = Array.new(max_value + 1, 0)
  p counts

  # Count the number of occurrences of each value in the array
  array.each do |value|
    counts[value] += 1
  end

  # Modify the counts array to store the cumulative sum of counts
  (1..max_value).each do |i|
    counts[i] += counts[i - 1]
  end

  # Create a new array to store the sorted values
  sorted_array = Array.new(array.length)

  # Iterate over the original array in reverse order
  array.reverse_each do |value|
    # Decrement the count of the current value
    counts[value] -= 1

    # Insert the value into the sorted array at the correct position
    sorted_array[counts[value]] = value
  end

  # Return the sorted array
  sorted_array
end

array = [4,20,1,72,05,2347,2348,1]
p counting_sort(array)
