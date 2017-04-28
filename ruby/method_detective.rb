# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#1.
 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
 "iNvEsTiGaTiOn".swapcase!

#2.
"zom".insert(1, "o")
# => “zoom”

#3.
 "enhance".center(20)
# => "    enhance    "

#4.
"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase!

#5.
 "the usual".insert(9, " suspects")
 "the usual".concat(" suspects")
 "the usual"<<" suspects"
#=> "the usual suspects"

#6.
 " suspects".prepend("the usual")
# => "the usual suspects"

#7.
"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

#8.
"The mystery of the missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"

#9.
"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".squeeze!

#10.
"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

#11.
"How many times does the letter 'a' appear in this string?".count("a")
# => 4