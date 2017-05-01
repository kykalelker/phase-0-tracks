# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
puts zombie_apocalypse_supplies.join("*")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
zombie_apocalypse_supplies.each do 
  index = 0
  while (index+1) < zombie_apocalypse_supplies.length
    if zombie_apocalypse_supplies[index] > zombie_apocalypse_supplies[index+1]
      temp = zombie_apocalypse_supplies[index]
      zombie_apocalypse_supplies[index] = zombie_apocalypse_supplies[index+1]
      zombie_apocalypse_supplies[index+1] = temp
    end
    index += 1 
  end
end
puts zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
new_item = "hat"
zombie_apocalypse_supplies.each do |n| 
  if n != new_item 
    puts "no"
    break
  elsif n == new_item
    puts "yes"
    break
  end
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
zombie_apocalypse_supplies.each do |n| 
  new_array = []
  if n.length <= 8
    new_array = n
  end
  puts new_array
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
puts zombie_apocalypse_supplies|other_survivor_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each{|key, value| puts "#{key}-#{value}*"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_animals.each do |key, value|
  new_animals = {}
  if value > 2000
   new_animals[key] = value
 else new_animals = nil
  end
  puts new_animals
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
 extinct_animals.each do |key, value| 
   extinct_animals[key] = value-3
end
p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

new_animals = ["Andean Cat", "Dodo", "Saiga Antelope"]
new_animals.each do |n|
  extinct_animals.each do |key, value|
    if key == n
      puts "#{n} is an extinct animal"
    end
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
p extinct_animals.shift {|key, value| key == "Passenger Pigeon"}