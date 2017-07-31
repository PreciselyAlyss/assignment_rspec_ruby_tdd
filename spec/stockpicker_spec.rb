require_relative '../lib/stockpicker.rb'
require 'spec_helper'

describe StockPicker do

  let(:stockpicker) { described_class.new }
  let(:nine_values) { described_class.new([44, 30, 24, 32, 35, 30, 40, 38, 15]) }

  describe '#initialize' do
    it 'creates the prices array' do
      expect(nine_values.prices).to eq([44, 30, 24, 32, 35, 30, 40, 38, 15])
    end
  end

  describe '#picker' do
    it 'says to buy day 0 and sell day 2 from [2, 7, 17, 1]'
  end

  describe '#profit' do
    it 'rasies an error if profit is negative'
  end
  
end
