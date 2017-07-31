require_relative '../lib/anagram.rb'
require 'spec_helper'

describe Anagrams do

  let(:anagram) { described_class.new }
  let(:looter) { described_class.new("looter", %w(spooky retool rootle tooler toddler)) }
  let(:zygote) { described_class.new("zygote", %w(spooky retool rootle tooler toddler)) }

  describe '#initialize' do
    it 'sets the word variable as looter' do
      expect(looter.word).to eq("looter")
    end

    it 'sets the dict array with values' do
      # this also checks that dict is an array as expected
      expect(looter.dict).to eq(["spooky", "retool", "rootle", "tooler", "toddler"])
    end

    it 'alphabetizes the word argument for alpha_word' do
      expect(looter.alpha_word).to eq("eloort")
    end

    it 'creates an empty array for the resulting anagrams' do
      expect(looter.anagrams).to be_empty
    end
  end

  describe '#anagram_solve' do
    before do
      looter.anagram_solve
    end

    it 'adds values to anagram array when matches exist' do
      expect(looter.anagrams).to eq(["retool", "rootle", "tooler"])
    end
  end

  describe '#results' do
    it 'expect runtime error when anagram array is empty or nil' do
      expect{ zygote.results }.to raise_error("No 6-letter anagrams found.")
    end
  end

end
