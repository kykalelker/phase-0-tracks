puts "what's the hamster's name?"
hamster_name = gets.chomp
puts "How loud is it on a scale of 1(silent) to 10(really loud)?"
hamster_volume = gets.chomp.to_i
puts "What color is the hamster?"
hamster_color = gets.chomp
puts "Is #{hamster_name} a good candidate for adoption? (y/n)"
adoption_candidacy = gets.chomp
puts "How old is it?"
hamster_age = gets.chomp
if hamster_age.empty?
  hamster_age = nil
else hamster_age = hamster_age.to_i
end
puts 5+hamster_age

