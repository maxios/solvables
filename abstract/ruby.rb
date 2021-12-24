
require "minitest/autorun"

def split_array_by(element, arr)
  result = [[]]
  counter_index = 0
  arr.each do |n|
    if n == element
      counter_index += 1
      result[counter_index] = []
      next
    end

    result[counter_index] << n
  end

  result
end

describe 'Array' do
  describe "split array" do
    it "must split array by certain element" do
      _(split_array_by(nil, [1, 2, nil, 3, 4])).must_equal [[1,2], [3,4]]
    end
  end
end
