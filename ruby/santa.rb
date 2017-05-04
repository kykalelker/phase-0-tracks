class Santa
  attr_reader :reindeer_ranking
  attr_accessor :gender, :age, :ethnicity

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def about
    puts "There is a #{@gender} santa who is of #{@ethnicity} ethnicity and is #{@age} yrs old"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_method
    @age += 1
    puts "This santa just turned #{@age} today! Happy Birthday!"
  end

  def get_mad_at (reindeer)
    puts "This santa is mad at #{reindeer}, so he will move to the bottom of the list as follows"
    reindeer_index = @reindeer_ranking.index(reindeer)
    final_index = @reindeer_ranking.length-1
    @reindeer_ranking[reindeer_index] = @reindeer_ranking[final_index]
    @reindeer_ranking[final_index] = reindeer
    p @reindeer_ranking
  end
end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


100.times do 
gender = example_genders.sample
ethnicity = example_ethnicities.sample
manta = Santa.new(gender, ethnicity)
manta.age = rand(0..140)
reindeer = manta.reindeer_ranking.sample
manta.about
manta.speak
manta.eat_milk_and_cookies("cracker")
manta.celebrate_method
manta.get_mad_at(reindeer)
manta.about
end



=begin  
santaclaus = Santa.new("female", "asian")
santaclaus.speak
santaclaus.eat_milk_and_cookies("biscuit")
santaclaus.about
santaclaus.celebrate_method
santaclaus.get_mad_at ("Vixen")
santaclaus.gender="male"
santaclaus.about
puts "This santa's age is #{santaclaus.age} and ethnicity is #{santaclaus.ethnicity}"
=end