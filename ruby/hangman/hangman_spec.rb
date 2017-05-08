require_relative "hangman"

describe Game do 
 
  it "Split word into letters" do
    game = Game.new
    expect(game.wordsplit("rhyme")).to eq ["r","h","y","m","e"]
  end

  
end