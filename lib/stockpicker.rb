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
    # 0 to length of prices array converted to array
    # repeated_permutations determines the number of times to find output
    # select values to return where finish is greater than start
    # return max values by positive diff between price[finish] less price[start]
    ((0...@prices.length).to_a)
    .repeated_permutation(2)
    .select {|start, finish| finish > start}
    .max_by {|start, finish| @prices[finish] - @prices[start]}
  end

  def profit
    # stuff here
  end

end

# Run script
pick = StockPicker.new([44, 30, 24, 32, 35, 30, 40, 38, 15])

