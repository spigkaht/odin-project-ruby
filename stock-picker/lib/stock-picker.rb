# Stock Picker exercise for Odin Project Ruby Path

def stock_picker(prices)
  max_profit = 0
  most_profitable_pair = []

  prices.each_with_index do |price1, index1|
    prices.each_with_index do |price2, index2|
      profit = price2 - price1
      if profit > max_profit && index1 < index2
        max_profit = profit
        most_profitable_pair = [index1, index2]
      end
    end
  end
  print most_profitable_pair
  print " => for a profit of $#{max_profit}\n"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
stock_picker((0..100).to_a.shuffle)
