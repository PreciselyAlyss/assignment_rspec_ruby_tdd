class Anagrams
  attr_reader :dict, :word, :alpha_word, :anagrams

  def initialize(word, dict)
    @anagrams = []
    @alpha_word = word.chars.to_a.sort.join.downcase
    @dict = dict
    @word = word
  end

  def anagram_solve
    @dict.each do |x|
      if x.chars.to_a.sort.join.downcase == @alpha_word
        @anagrams << x
      end
    end
  end

  def results
    if @anagrams == [] || @anagrams == nil
      raise "No #{@word.length}-letter anagrams found."
    else 
      p "Anagrams of '#{@word}':"
      p @anagrams
    end
  end
end

# Run script
solve = Anagrams.new("looter", %w(spooky retool rootle tooler toddler))
solve.anagram_solve
solve.results

