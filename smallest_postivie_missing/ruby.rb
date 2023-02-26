# O(n^4)
def get_smallest_positive_missing(array)
  # Assume we have [7, -2, 3, 1, 2, 20, -5]
  # Sort array with quick sorting strategy => [-5, -2, 1, 2, 3, 7, 20]
  array.sort!
  
  smallest = 1
  array.each_with_index do |v, i|
    array.each_with_index do |n, j|
      smallest += 1 if smallest == v
    end
  end

  smallest
end
