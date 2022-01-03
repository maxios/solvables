class Solution1
  $even_sum = 0

  def add(x, y)
    x + y
  end

  def is_even(n)
    n % 2 == 0
  end


  def execute(x, y, limit)
    sum = add(x, y)

    puts "#{sum} #{is_even(sum)}"
    $even_sum += sum if is_even(sum)

    if sum > limit
      y
    else
      self.execute(y, sum, limit)
    end
  end
end

puts Solution1.new.execute(1, 2, 4000000)

require "minitest/autorun"

describe '' do
  describe "find_multiples" do
    it "should find SUM of all specified multiples according to 'factors', under certain limit" do
      _(Solution1.new.execute(1, 2, 10)).must_equal 18
    end
  end
end

