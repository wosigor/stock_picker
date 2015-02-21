def stock_picker(prices)
  best_price = 0
  bestDays = []

  prices.each_with_index do |buy, buy_index|
    prices[buy_index+1..-1].each_with_index do |sell, sell_index|
      current = sell - buy
      if current > best_price
        best_price = current
        bestDays = [buy_index, buy_index + sell_index + 1]
      end
      puts prices[buy_index].to_s + " " + sell.to_s + " " + best_price.to_s
    end
  end

  puts "best: #{best_price}, days#{bestDays}"
end

stock_picker([17,3,6,9,15,8,6,1,10])

