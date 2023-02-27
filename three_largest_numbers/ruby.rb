def find_three_largest(array)
  return array if array.length < 3;

  # initiate the largets numbers as the first three elements
  largest_numbers = array[0..2].sort

  # Loop on the rest of of the elements
  array[2..-1].each do |n|
    # If the it is the largest elements
    if largest_numbers.last < n
      largest_numbers = largest_numbers[1..-1] << n
      next

    # If it is the second largest
    elsif largest_numbers[1] < n
      largest_numbers = [] << largest_numbers[1] << n << largest_numbers[-1]
      next

    # If it the third largest
    elsif largest_numbers[2] < n
      largest_numbers = [] << n << largest_numbers[1] << largest_number[-1]
      next

    # If it is smaller than the largest three, continue
    else
      next
    end
  end

  # Return the largest three number in the array
  largest_numbers
end
