def non_constructible_change(coins)

  # Sort the coins
  # O(log(n))
  coins.sort!

  currentChangeCreated = 0

  coins.each do |coin|
    if coin > currentChangeCreated + 1
      return currentChangeCreated + 1
    end

    currentChangeCreated += coin
  end
  
  return currentChangeCreated + 1
end
