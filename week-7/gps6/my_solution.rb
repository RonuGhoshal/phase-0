# Virus Predictor

# I worked on this challenge with Michael London
# We spent 1+ hours on this challenge.

# EXPLANATION OF require_relative
   require_relative 'state_data'
# require_relative loads the library RELATIVE to the file we are currently in

# require can be used to load Ruby modules, etc... using absolute path

class VirusPredictor

  # Creates a new object and accepts three arguments, assigns each argument to its own instance variable - each variable can be used throughout the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls the two private methods, passes in the instance variables from the initialize method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

  # Determines number_of_deaths based on the population and population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    when  @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
    when @population_density < 50 then number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # Determines how many months it will take to spread across the country in relation to population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months_to_spread = 0.0
    case @population_density
    when @population_density >= 200 then months_to_spread  += 0.5
    when @population_density >= 150 then months_to_spread += 1
    when @population_density >= 100 then months_to_spread += 1.5
    when @population_density >= 50 then months_to_spread += 2
    when @population_density < 50 then months_to_spread += 2.5
    end
    puts " and will spread across the state in #{months_to_spread} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|

state_name = VirusPredictor.new(state, data[:population_density], data[:population])
state_name.virus_effects

end



# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
The difference between the two hash syntaxes is that one uses a string, while
the other uses symbols. Symbols are preferred when you want them to be unchangeable,
they also use less memory.

"Require relative" loads a file (can be specs, modules, etc) RELATIVE to the path of the current
file we are in. "Require" would use the absolute path.

The way I generally find myself iterating through a hash is by using .each do |key, value| -

When refactoring virus_effects, we were able to remove the instance variables. This is because
we can already access these variables throughout the class and do not need to pass them into
a method.

This exercise gave me much-needed practice on accessing instance variables throughout a
method, and sending data between different methods in a Class.

=end