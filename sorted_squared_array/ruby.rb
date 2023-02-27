def sorted_squared(array)
  queue = []
  output = []
  array.each_with_index do |v, k|
    # If the value is negative, store it in the queue and go to the next v
    if v < 0
      queue << v**2 
      next

    # If the value is positive and greater than the last element in queue
    elsif queue.last && v > 0 && v**2 > queue.last
      # Put all the absolute values that are smaller than the current value
      while queue.last && queue.last <= v**2
        output << queue.pop
      end

      # Finally put the current value
      output << v**2
    else
      output << v**2
    end
  end

  # if there are remainings the the queue
  if queue.length
    queue.reverse.each { |n| output << n }
  end

  # Retrun the output
  output
end
