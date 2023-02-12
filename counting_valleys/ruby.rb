#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
    altitude = 0
    vallies = 0
    for step in s.split('')
        current = altitude
        altitude += 1 if step == 'U'
        altitude -= 1 if step == 'D'
        vallies += 1 if current == -1 && altitude == 0
    end

    vallies
end

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

puts result
