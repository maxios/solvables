def find_multiples(limit, *args)

  #naive solution

  result = 0
  args.each do |multiple|
    jumps = 1
    result = 0
    sum = []

    loop do
      result = multiple * jumps
      break if result < limit

      sum.push(res)

      t += 1
    end

    result += sum.sum
  end

end

puts find_multiples(1000, 3, 5)
