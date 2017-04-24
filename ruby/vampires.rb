puts "Good Day! How many employees do you want to process today?"
empl_no = gets.chomp.to_i
count = 0
# Collect employee data
while count < empl_no
  count += 1
  puts "Employee No. #{count}"
  puts "What is your name?"
  newhire_name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "In what year were you born?"
  birth_year = gets.chomp.to_i
  if (2017-birth_year) > 100
    puts "It seems like you are over a hundred years old. Are you sure you were born in #{birth_year}"
    puts "Why don't you try again? What year were you born in?"
    birth_year = gets.chomp.to_i
    age = (2017-birth_year)
  end
    
  puts "Our cafeteria makes the best garlic bread, You should try it with your coffee. Should I order up some for you? (y/n)"
  wants_garlicbread = gets.chomp
  if wants_garlicbread == "y"
    wants_garlicbread = true
  elsif wants_garlicbread == "n"
    wants_garlicbread = false
  else puts "Sorry, I don't understand"
  end
 
  puts "We have a very comprehensive health insurance policy. Would you like us to enroll you in it? (y/n)"
  wants_insurance = gets.chomp
  if wants_insurance == "y"
    wants_insurance = true
  elsif wants_insurance == "n"
    wants_insurance = false
  else puts "Sorry, I don't understand"
  end

  # Collect data about employee's allergies
  puts "We need to know about all of your allergies. Type 'done' when you're done listing them."
  allergy = gets.chomp 
  until allergy == "done" || allergy == "none"
    if allergy == "sunshine"
      puts "#{newhire_name} is probably a vampire."
    break
    end   
    allergy = gets.chomp
  end

  # Check if employee is a potential vampire
  if !(allergy == "sunshine")
    if (newhire_name == "DrakeCula") || (newhire_name == "TuFang")
    puts "#{newhire_name} is definitely a vampire."
    elsif (age<=100) && (wants_garlicbread || wants_insurance)
    puts "#{newhire_name} is probably not a vampire."
    elsif !(age<=100) && !(wants_garlicbread && wants_insurance)
    puts "#{newhire_name} is probably a vampire."
    elsif !(age<=100) && !(wants_garlicbread || wants_insurance)
    puts "#{newhire_name} is almost certainly a vampire."
    else puts "Results Inconclusive on #{newhire_name}'s status"   
    end 
  else next
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."