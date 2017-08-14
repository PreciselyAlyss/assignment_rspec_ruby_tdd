require_relative '../lib/stockpicker.rb'
require 'spec_helper'

describe StockPicker do

  let(:stockpicker) { described_class.new }
  let(:nine) { described_class.new([44, 30, 24, 32, 35, 30, 40, 38, 15]) }
  let(:four) { described_class.new([2, 7, 17, 1])}

  describe '#initialize' do
    it 'creates the prices array' do
      expect(nine.prices).to eq([44, 30, 24, 32, 35, 30, 40, 38, 15])
    end
  end

  describe '#picker' do
    before do
      four.picker
    end
    
    it 'says to buy day 0 and sell day 2 from [2, 7, 17, 1]' do
      expect(four.days).to eq([0,2])
    end
  end

  describe '#profit' do
    it 'rasies an error if profit is negative'
  end
  
end
