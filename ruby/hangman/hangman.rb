=begin
DC = Driver Code, CM = Class/Method

1.  DC: et word to be guessed
2.  CM: Break word into individual characters and store in a word_array
3.  CM: Find word/word_array length and create another array (guess_array) with 
    length no. of ‘__’ in it.
4.  CM: Set no. of guesses available to user 2 to twice the word/word_array length
5.  DC: Tell user he has (twice the word length) number of guess. Ask user to a 
    guess letter
6.  CM: Match input letter to word_array
7.  CM: If it matches any letter from the word_array, find its index and store it 
    at the same index in the guess_array.
a.  CM: Print individual characters from the guess_array in the form of a word 
    back to user 2. 
8.  Else 
a.  CM: Store letter in another reject_array  
9.  DC: Tell user to guess again along with the no. of guesses he has left.
10. DC: Repeat steps 5 thru 8, while checking to see if the letter the input 
    letter was guessed before either in 
    guess_array or in reject_array. If yes, then don’t decrease the guess count.
11. DC: Either when the no. of guesses are over or when the user guesses the word, 
    the game is over. 
12. DC: If the word matches, congratulate the user
    DC: Else taunt the user
=end

#Class & its Methods

class Game 
  attr_reader :guess_num

  def initialize (word)
    puts "Initializing Game instance ..."
    @word = word
    @length = word.length
    @guess_num = word.length + 3
    @word_array = []
    @guess_array = []
    @reject_array = []
  end

  def wordsplit
    @word_array = @word.chars
  end

  def guess_array 
    @guess_array = Array.new(@length,'_')
  end

  def match_letter (letter)
    if @reject_array.include?(letter) || @guess_array.include?(letter)
      @guess_num = @guess_num
    else
      @guess_num -= 1
      @word_array.each_index.select do |i| 
        if @word_array[i]==letter
          @guess_array[i] = letter
        end
      end
    end
    puts "Your current word is:"
    puts @guess_array.join(" ")
    p @guess_array
  end

  def word_match
    @word_array == @guess_array
  end

  def unmatch_letter (letter)
    if !(@word_array.include?(letter))
      puts "You guessed wrong."
      if !@reject_array.include?(letter)
        @reject_array << letter
      end
    end
    p @reject_array
  end

  def game_run (letter)
    match_letter(letter)
    unmatch_letter(letter)
    if word_match
      return word_match
    end
  end
end


#Driver Code

word = "rhythm"
hangman = Game.new (word)
hangman.wordsplit
hangman.guess_array
while hangman.guess_num > 0 
  puts "You have #{hangman.guess_num} chances left. Guess"
  letter = gets.chomp
  hangman.game_run (letter)
  if hangman.word_match
    puts "Congratulations, nicely done!"
    break
  end
end
if hangman.guess_num == 0 && !hangman.word_match
  puts "Sorry dodo, you're out of chances and brains as it seems"
end  
