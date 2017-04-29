# Release 1
#Creating a form to capture client details for interior design purposes
#Initialize hash 
app_form = {
  name: "",
  address: "",
  email: "",
  phone: "",
  fav_blue: "",
  wallpaper_pref: [],
  ombre: ""
}
#Collect user information
puts "What is your name?"
app_form[:name] = gets.chomp
puts "What is your address?"
app_form[:address] = gets.chomp
puts "What is your email?"
app_form[:email] = gets.chomp
puts "What is your phone number?"
app_form[:phone] = gets.chomp.to_i
puts "What is your favorite shade of blue?"
app_form[:fav_blue] = gets.chomp
puts "What kind of wallpaper do you like? Select all that apply. Type done, when done"
puts wallpaper_options = ["Paisley", "Chevron", "Photorealistic woodsy scenes (with or without squirrels)", "Abstract woodsy scenes (no squirrels)"]
until (gets.chomp == "done") 
 app_form[:wallpaper_pref] << gets.chomp
end
puts "You think OMBRE is"
puts ombre_is = ["Fierce", "So last season", "Practically medieval in its appalling irrelevance"]
ombre_opinion = gets.chomp
if ombre_opinion == ombre_is[0]
  app_form[:ombre] = 1
elsif ombre_opinion == ombre_is[1]
  app_form[:ombre] = 2
else app_form[:ombre] = 3
end
#Print original hash
p app_form
#Update name value in hash
puts "Would you like to update any field? If yes, which one?"
field = gets.chomp.to_sym
puts "What would you like the value to be?"
#Using a variable as a key in a hash
app_form[field] = gets.chomp
#Add new key-value pair
app_form[:hired] = true
#Re-print updated hash
p app_form
#Add 2 entries from the hash does not affect original hash
puts app_form[:name]+app_form[:email]
p app_form






# Release 2: Create a form to capture client details for interior design purposes

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

