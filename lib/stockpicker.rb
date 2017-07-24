# Quit thinking about sorting algorithms
# the problem is too small to have a noticeable 
# performance improvement

class StockPicker
  attr_reader :day, :price
  
  def initialize(day, price)
    @day = day
    @price = price
  end

  def hash 
    @day.hash ^ @price.hash
  end

  def optimal_purchase
    # find cheapest day to buy
  end

  def optimal_sale
    # uses optimal_purchase
    # stuff here for finding day to sell stock
    # effectively optimal stopping with full data set
  end

  def calculate_profit
    # substract total money spent from sell price
    # to calculate net profit
  end
end
