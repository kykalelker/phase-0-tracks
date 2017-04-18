puts "what's the hamster's name?"
hamster_name = gets.chomp

puts "How loud is it on a scale of 1(silent) to 10(really loud)?"
hamster_volume = gets.chomp.to_i

puts "What color is the hamster?"
hamster_color = gets.chomp

puts "Is #{hamster_name} a good candidate for adoption? (y/n)"
adoption_candidacy = gets.chomp
    if adoption_candidacy == "y"
        adoption_candidacy = true
    elsif adoption_candidacy == "n"
        adoption_candidacy = false
    else
        puts "Um, what?"
    end

puts "How old is the hamster?"
hamster_age = gets.chomp
    if hamster_age.empty?
      hamster_age = nil
    else hamster_age = hamster_age.to_f
    end

puts "So, the hamster's name is #{hamster_name}, on a scale of 1-10, his/her loudness is #{hamster_volume}, his/her color is #{hamster_color}, it's #{adoption_candidacy} that #{hamster_name} is adoptable, and he/she is #{hamster_age} years old!"

