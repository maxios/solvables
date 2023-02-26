def two_number_sum(array, target_sum)
  # Store the number with the complamentary value
  hash = Hash.new

  array.each_with_index do |n, i|
    value = array[i]
    next_value = array[i+1]
    complementaries = hash.keys

    complementaryIndex = complementaries.index(value)

    if (complementaryIndex != nil)
        complementNumber = hash[complementaries[complementaryIndex]]

        puts "the two numbers sum are: #{[value, complementNumber].inspect}"
        return [value, hash[complementaries[complementaryIndex]]]
    end

    hash[target_sum - value] = value
  end

  []
end
