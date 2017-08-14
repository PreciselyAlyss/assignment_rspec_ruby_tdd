# Quit thinking about sorting algorithms
# the problem is too small to have a noticeable 
# performance improvement
# 1) find all pairs of eligible days, 2) find the pair of days with the highest profit

class StockPicker
  attr_reader :prices, :min, :max, :days, :len

  def initialize(prices)
    @prices = prices
    @min = @prices[0]
    @max = @prices[0]
    @days = [0,1]
    @len = @prices.length
  end

  def picker
    @prices.each_with_index do |price, i|
      if(price < @min && (i < @len-2))
        @min = price
        @days[0] = i
        @max = @prices[i+1]
        @days[1] = i+1
      end

      if(price > @max && (i < @len-1))
        @max = price
        @days[1] = i
      end
    end
  end

  def profit
    profit = @max - @min
    if profit > 0 
      p @days
      p "The profit from the sale of this stock will be $#{profit}"
    else
      raise "Something went terribly wrong"
    end
  end

end

# Run script
pick = StockPicker.new([44, 30, 24, 32, 35, 30, 40, 38, 15])
pick.picker
pick.profit
