#Create a form to capture client details for interior design purposes

#Define client data hash with essential keys
client_data = {
  name: "",
  address: "",
  email: "",
  phone: "",
  gender_female: "",
  children: "",
  decor_theme: "",
  budget_cutoff: ""
}

#Ask user for data
puts "In order to do a good job of decorating your home, we need some details from you:"
puts "What is your name?"
client_data[:name] = gets.chomp
puts "What is your address?"
client_data[:address] = gets.chomp
puts "What is your email?"
client_data[:email] = gets.chomp
puts "What is your phone number?"
client_data[:phone] = gets.chomp.to_i
puts "Do you identify with being female?"
if gets.chomp == "yes" 
  client_data[:gender_female] = true
else client_data[:gender_female] = false
end
puts "How many children do you have?"
client_data[:children] = gets.chomp.to_i
puts "What decor theme do you like?"
client_data[:decor_theme] = gets.chomp
puts "And finally, what is your budget"
client_data[:budget_cutoff] = gets.chomp.to_i

#Print hash back to the screen
puts "Kindly confirm your details"
p client_data
#Ask if anything needs to be updated
puts "Would you like to update anything?"
if !(gets.chomp == "none")
#Get field to convert from user 
puts "What would you like to update?"
update_key = gets.chomp
puts " What is your #{update_key}? "
#Convert input field to symbol and use it to store value
client_data[update_key.to_sym] = gets.chomp
end  

#Print updated hash to the screen
puts "Here are all your most updated details"
p client_data
