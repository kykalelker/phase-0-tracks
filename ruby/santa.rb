class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance ..."
   @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def about
    puts "There is a #{@gender} santa who is of #{@ethnicity} ethnicity"
end
end

=begin
santaclaus = Santa.new

santaclaus.speak
santaclaus.eat_milk_and_cookies("biscuit")
santaclaus.initialize

=end
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
santas << Santa.new("male", "Hmong")
santas << Santa.new("female","Sami")

santas.length.times do |i|
  santas[i].about 
end
