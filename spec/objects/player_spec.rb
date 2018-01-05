require_relative '../spec_helper'
require_relative '../../src/objects/player'
require('matrix')

describe Player do
  it "Player exists" do
    expect(Player).to be Player
  end
end