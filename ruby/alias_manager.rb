vowels = ["a","e","i","o","u"]
consonants = "bcdfghjklmnpqrstvwxyz"
consonant_array = consonants.chars


#call name encryptor method on the first and last name.
#return new name after putting it together again


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

name = "Kanan Kalelker"
name = name.downcase
fullname_array = name.chars
p fullname_array
fname = first_name (fullname_array)
lname = last_name (fullname_array)
p fname
p lname