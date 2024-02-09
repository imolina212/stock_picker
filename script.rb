def stock_picker(prices)
    # Initialize variables to track the best buy and sell days, and the maximum profit
    best_buy_day = 0
    best_sell_day = 0
    max_profit = 0
  
    # Iterate through each day
    prices.each_with_index do |buy_price, buy_day|
      # Iterate through subsequent days to find the best sell day
      (buy_day + 1...prices.length).each do |sell_day|
        sell_price = prices[sell_day]
        # Calculate the profit if we sell on this day
        profit = sell_price - buy_price
        # Update the best buy and sell days if the profit is greater than the current maximum profit
        if profit > max_profit
          max_profit = profit
          best_buy_day = buy_day
          best_sell_day = sell_day
        end
      end
    end
  
    # Return the pair of best buy and sell days
    [best_buy_day, best_sell_day]
  end

p stock_picker([17,3,6,9,15,8,6,1,10]) #  => [1,4]  # for a profit of $15 - $3 == $12