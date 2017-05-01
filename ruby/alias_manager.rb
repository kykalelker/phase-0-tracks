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
def encrypted_fullname (new_fname, new_lname)
first = new_fname.join.capitalize!
last = new_lname.join.capitalize!
new_fullname = first + " " + last 
end

  
name = "Ozis Beii"
name = name.downcase
fullname_array = name.chars
fname = first_name (fullname_array)
lname = last_name (fullname_array)
new_last_name = name_muddler (fname)
new_first_name = name_muddler (lname)
p encrypted_fullname(new_first_name, new_last_name)

=begin
p fname
p lname
p new_first_name
p first
p new_last_name
p last
=end
