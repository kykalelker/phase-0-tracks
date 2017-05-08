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
  def initialize

  end

  def wordsplit (word)
    word_array = word.chars
  end

  def wordlength (word)
    length = word.length
  end

  def guess_array (length)
    guess_array = Array.new(length,'_')
  end

end





#Driver Code
hangman = Game.new
puts "User 1, what word would you like User 2 to guess?"
word = gets.chomp
hangman.wordsplit (word)

