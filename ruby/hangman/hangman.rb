=begin
DC = Driver Code, CM = Class/Method

1.  DC: Ask user1 for word to be guessed
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
    @guess_num = 2 * word.length
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
    if !(@word_array.include?(letter))
      @reject_array << letter
      puts "You guessed wrong."
    else
      @word_array.each_index.select do |i| 
        if @word_array[i]==letter
          position = i
          @guess_array[i] = letter
        end
      end
      puts "Your current word is:"
      puts @guess_array.join(" ")
    end
    @guess_num -= 1
    @guess_array
  end

end


#Driver Code

puts "User 1, what word would you like User 2 to guess?"
word = gets.chomp
hangman = Game.new (word)
hangman.wordsplit
hangman.guess_array
puts "User 2, you have #{hangman.guess_num} chances to guess the correct letters."

puts "Guess a letter: "
letter = gets.chomp
hangman.match_letter (letter)
puts "You have #{hangman.guess_num} chances left. Guess again"




