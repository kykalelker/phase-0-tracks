class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    count = 0
    while count < number
      puts "Woof!"
      count += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(years)
    years*7
  end

  def sit
    puts "*sits*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

class Kitty
  def meow(number)
    number.times {puts "Meow!"}
  end

  def play(toy)
    puts "I play with the #{toy}"
  end

  def drink(liquid)
    puts "Drinks #{liquid}"
  end

  def initialize
    puts "Initializing new kitty instance ..."
  end 
end


fido = Puppy.new
ball = "ball"
fido.fetch(ball)
num = 3
fido.speak(num)
fido.roll_over
human_yrs = 3
puts fido.dog_years(human_yrs)
fido.sit

pets = []
count = 0
while count < 50
  pets << Kitty.new
  count +=1
end

pets.each do |pet|
  pet.meow(2)
  pet.play("wool")
  pet.drink("milk")

end








