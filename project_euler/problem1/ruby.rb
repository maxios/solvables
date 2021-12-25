def find_multiples(limit, *factors)

  #naive solution

  sum = 0
  factors.each do |factor|
    jumps = 1
    result = 0

    # all natural numbers below the limit
    # divided by the factor
    multiples = []

    loop do
      result = factor * jumps
      break if result >= limit

      multiples.push(result)

      jumps += 1
    end

    sum += multiples.sum
  end

  sum
end

puts find_multiples(10, 3, 5)

require "minitest/autorun"

describe 'Find Multiples' do
  describe "find_multiples" do
    it "should find SUM of all specified multiples according to 'factors', under certain limit" do
      _(find_multiples(10, 3, 5)).must_equal 23
    end
  end
end
