def max_profit(prices)
  max_value = 0
  l, r = 0, 1

  while r < prices.length
    if prices[r] > prices[l] #check if the price of the stock went up
      profit = prices[r] - prices[l]
      max_value = [profit, max_value].max #maximize the profit
    else
      l = r # if the price on the right is less than left, we have a new minimum to work from
    end

    r += 1 # either way we progress the right pointer
  end

  return max_value
end


