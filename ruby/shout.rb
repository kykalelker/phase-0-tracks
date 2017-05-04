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
