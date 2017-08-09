require'./lib/dice_thrower.rb'
require 'spec_helper'

describe Game do 

  let(:game) { described_class.new }
  let(:eve) { described_class.new("Eve")}

  describe '#initalize' do
    it 'creates player with name Eve' do
      expect(eve.user).to eq("Eve")
    end

    it 'has a score variable to be an empty array' do
      expect(eve.score).to eq([])
    end
  end

  describe '#start' do
    it 'begins the game with the message "Welcome"' do
      expect(game.start).to start_with("Welcome")
    end
  end

  describe '#game' do
    it 'something'
  end

end
