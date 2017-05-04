=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def self.yelling_happily(exclamation)
    "!!Yayyy " + exclamation + " yyaY!!" + "8-D"
  end
end

puts Shout.yell_angrily("what the heck")
puts Shout.yelling_happily("nicely done")
=end

module Shout
  def yell_angrily(words)
    puts "Mommy says " + words + "!!!" + " :("
  end
  
  def yelling_happily(exclamation)
    puts "Child says " + "Yayy!! " + exclamation + " Yayy!!" + " :-p"
  end
end

class Mommy
  include Shout 
end

class Child
  include Shout
end

mommy = Mommy.new 
mommy.yell_angrily("Don't do that")

kiddo = Child.new
kiddo.yelling_happily("ice cream")


