puts "What is your name?"
newhire_name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "In what year were you born?"
birth_year = gets.chomp.to_i
puts "Our cafeteria makes the best garlic bread, You should try it with your coffee. Should I order up some for you? (y/n)"
wants_garlicbread = gets.chomp
if wants_garlicbread == "y"
  wants_garlicbread = true
 elsif wants_garlicbread == "n"
 wants_garlicbread = false
 else puts "Sorry, I don't understand"
 end
 
puts "We have a very comprehensive health insurance policy. Would you like to us to enroll you in it? (y/n)"
wants_insurance = gets.chomp
 if wants_insurance == "y"
  wants_insurance = true
 elsif wants_insurance == "n"
 wants_insurance = false
 else puts "Sorry, I don't understand"
 end

if (newhire_name == "DrakeCula") || (newhire_name == "TuFang")
  puts "Definitely a vampire."
elsif (age<=100) && (wants_garlicbread || wants_insurance)
  puts "Probably not a vampire."
elsif !(age<=100) && !(wants_garlicbread && wants_insurance)
  puts "Probably a vampire."
elsif !(age<=100) && !(wants_garlicbread || wants_insurance)
  puts "Almost certainly a vampire."
else puts "Results Inconclusive."   
end 