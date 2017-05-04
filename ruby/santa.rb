class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

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

=begin
  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
=end

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
    reindeer_index = @reindeer_ranking.index(reindeer)
    final_index = @reindeer_ranking.length-1
    @reindeer_ranking[reindeer_index] = @reindeer_ranking[final_index]
    @reindeer_ranking[final_index] = reindeer
    puts @reindeer_ranking
  end
end


santaclaus = Santa.new("female", "asian")
santaclaus.speak
santaclaus.eat_milk_and_cookies("biscuit")
santaclaus.about
santaclaus.celebrate_method
santaclaus.get_mad_at ("Vixen")
santaclaus.gender="male"
santaclaus.about
puts "This santa's age is #{santaclaus.age} and ethnicity is #{santaclaus.ethnicity}"
