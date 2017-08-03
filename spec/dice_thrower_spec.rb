require_relative '../lib/dice_thrower.rb'
require 'spec_helper'

describe Game do 

  let(:game) { described_class.new }
  let(:eve) { described_class.new("Eve")}

  describe '#initalize' do
    it 'creates player with name Eve' do
      expect(eve.name).to eq("Eve")
    end

    it 'has a score variable with a value of 0' # do
      # expect(eve.score).to eq(0)
    # end
  end

  describe '#start' do
    it 'says "Game Start"' do
      expect(game.start).to output.to_stdout
    end
  end

  describe '#roll' do
    it 'something'
  end

  describe '#game' do
    it 'something'
  end

end
