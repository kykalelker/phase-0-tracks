#Accept name, split it using the space in between into 2 arrays
def first_name (name_array) 
  index = 0
  fname = []
  space_position = name_array.index(" ")
  while index < space_position
  fname[index] = name_array[index]
  index += 1 
  end
  return fname
end
    
def last_name (name_array)
  index = 0 
  lname = []
  start_position = name_array.index(" ") + 1
  name_array.slice!(0..name_array.index(" ") )
  while index < name_array.length
    lname [index] = name_array[index]
    index += 1
  end
  return lname
end

#call name encryptor method on the first and last name.
def name_muddler (array)
vowels = ["a","e","i","o","u"]
consonants = "bcdfghjklmnpqrstvwxyz"
consonant_array = consonants.chars 
new_name = []
index = 0
while index < array.length
  if array[index] == "u"
    new_name[index] = "a"
  elsif vowels.include?(array[index])
    new_name[index] = vowels[vowels.index(array[index]).next]
  elsif array[index] == "z"
    new_name[index] = "b"
  else new_name[index] = consonant_array[consonant_array.index(array[index]).next]
  end
  index += 1
end 
return new_name
end

  
#return new name after putting it together again
def create_new_fullname (new_fname, new_lname)
first = new_fname.join.capitalize!
last = new_lname.join.capitalize!
new_fullname = first + " " + last 
end

#driver code
def encrypted_name (name)
  fullname_array = name.chars
  fname = first_name (fullname_array)
  lname = last_name (fullname_array)
  new_last_name = name_muddler (fname)
  new_first_name = name_muddler (lname)
  create_new_fullname(new_first_name, new_last_name)
end  
  
#User interface
puts "Type the full name that you want to encrypt:"
name = gets.chomp
index = 0
original_name = []
secret_agent_name = []
until name == "quit" || name == "Quit" 
  original_name[index] = name
  secret_agent_name[index] = encrypted_name(name)
  puts "The encrypted name is:"
  puts secret_agent_name[index]
  puts "Encrypt another full name?"
  name = gets.chomp
  index +=1
end

#Final result
counter = 0
while counter<original_name.length
puts "#{original_name[counter]} is also known as #{secret_agent_name[counter]}"
counter += 1
end
