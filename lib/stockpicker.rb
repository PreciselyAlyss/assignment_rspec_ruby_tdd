# Quit thinking about sorting algorithms
# the problem is too small to have a noticeable 
# performance improvement
# 1) find all pairs of eligible days, 2) find the pair of days with the highest profit

class StockPicker
  attr_reader :prices

  def initialize(prices)
    @prices = prices
  end

  def picker
    ((0...@prices.length).to_a)
      .repeated_permutation(2)
      .select {|start, finish| finish > start}
      .max_by {|start, finish| @prices[finish] - @prices[start]}
  end

  def profit
    # stuff here
  end

end
