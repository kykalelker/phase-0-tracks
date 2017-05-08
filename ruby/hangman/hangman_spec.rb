require_relative 'hangman'

describe Game do 
 let(:game) { Game.new ("rhyme") }
  it "Split word into letters" do
    expect(game.wordsplit).to eq ["r","h","y","m","e"]
  end

it "Sets guess_array to contain wordlength number of '_'s" do
    expect(game.guess_array).to eq ["_","_","_","_","_"]
  end
  
it "Matches a letter to the characters in an array" do
  expect(game.match_letter("r")).to eq ["r","_","_","_","_"]
  end
end