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

  it "Matches complete word to the given word" do
    @guess_array = ["r","h","y","m","e"]
    expect(game.word_match).to eq true
  end

  it "Inserts unmatched letters in the reject array" do
    letter = "a"
  expect(game.unmatch_letter).to eq ["a"]
  end

  it "Runs the methods for the game" do
    letter = "r"
    expect(game.game_run).to eq false  
    letter = "h"
    expect(game.game_run).to eq false 
    letter = "y"
    expect(game.game_run).to eq false 
    letter = "m"
    expect(game.game_run).to eq false 
    letter = "e"
    expect(game.game_run).to eq true 
  end


end
