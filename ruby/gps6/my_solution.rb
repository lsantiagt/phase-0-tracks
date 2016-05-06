
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is when it's relative to the statement and require is for libraries
# 

require_relative "state_data.rb"

class VirusPredictor

#This method is sed to instanciate a new class and accept 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#This method is used to call  the 2 methods below within the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

#This is a private method used to predicting the deaths based on the state's population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#This is a private method used to show the speed in months based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Two ways of accesing the hash using .each or .each_key
# STATE_DATA.each_key do | state  |
#     state_info = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#     state_info.virus_effects
# end

STATE_DATA.each do | state, info  |
    state_info = VirusPredictor.new(state, info[:population_density], info[:population])
    state_info.virus_effects
end

# Reflection
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The two different hash syntaxes y that the state key is a string and the population is hash. Order thing notice is that the value of State is another hash

# What does require_relative do? How is it different from require?
# require_relative will look for file on the current directory of the project vs the require is mainly for libraries.

# What are some ways to iterate through a hash?
# You can iterate through a hash using .each, .each_key, .each_value

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variable used where instance variables and where already instanciated, so the can be removed from the parameters. 

# What concept did you most solidify in this challenge?
# I have learned the use of private to separate private methods within the class and solidify the knowledge on hash iterations.