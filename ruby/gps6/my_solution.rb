# Virus Predictor

# I worked on this challenge with: Rico De Santis .
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#Provides the path to a file that needs to be linked to our code.
#
require_relative 'state_data'

class VirusPredictor

#Initializes the new instance of the virus predictor class, turns to variables into instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls the other 2 private methods

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#keeps the code from being manipulated from the outside
  private

  #calculates the number of deaths based on the population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = (@population * 0.4).floor if @population_density >= 200
    number_of_deaths = (@population * 0.3).floor if @population_density >= 150
    number_of_deaths = (@population * 0.2).floor if @population_density >= 100
    number_of_deaths = (@population * 0.1).floor if @population_density >= 50
    number_of_deaths = (@population * 0.05).floor if @population_density < 50
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #calculates the speed of desease spread depending on the population densitey
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed += 0.5 if @population_density >= 200
    speed += 1 if @population_density >= 150
    speed += 1.5 if @population_density >= 100
    speed += 2 if  @population_density >= 50
    speed += 2.5 if  @population_density >= 0
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, value|
   instance = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
   instance.virus_effects
end

=begin
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section

1. What are the differences between the two different hash syntaxes shown in the state_data file?
The key in the container hash is written in quotes with the => being used to assign values, while the nested hashes
notate the keys in the form of symbols with a :

2. What does require_relative do? How is it different from require?
REQUIRE and REQUIRE_RELATIVE are methods that link to other files using the filenames as arguments. Require is 
generally used to link to code libraries, while require_relative is used to link to local files using the file path 
relative to the file in which the method is being called.

3. What are some ways to iterate through a hash?
.each, and .map can be used to iterate through a hash

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
Since they were instance variables, the did not need to be passed to the methods as arguments.

5. What concept did you most solidify in this challenge?
instance variables and private methods


=end