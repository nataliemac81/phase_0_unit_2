# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: an integer from 1 to 6
# Output: the number of Die sides and result of the roll method
# Steps:
# 1. Create a class called Die.
# 2. Pass the initialize method to the sides variable.
# 3. Raise an ArgumentError if the integer is less than 1.
# 4. Define method called sides.
# 5. Define method called roll.


# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new('should contain an array') if labels !== []
  end
  
  def sides
    @sides
  end
  
  def roll
    print rand(1..@sides)
  end
end



# 4. Refactored Solution
# I couldn't think of a way to simplify the initial code.





# 1. DRIVER TESTS GO BELOW THIS LINE

my_die = Die.new(6)

print my_die.sides == 6
print my_die.respond_to?('sides', 'roll')
print my_die.roll == (1..6)






# 5. Reflection
#What parts of your strategy worked? What problems did you face?
# I initially tried to follow the usual driver test/pseudocode then initial code strategy and I couldn't really figure things out so I
# started figuring out the initial code first and went backwards to pseudocode. For some reason, I just couldn't
# wrap my mind around it the first way.


#What questions did you have while coding? What resources did you find to help you answer them?
# I used Ruby docs to research ArgumentError and rand
#

#Did you learn any new skills or tricks?
# yeah, I learned the respond_to? method!
#
#
#How confident are you with each of the learning objectives?
# feeling pretty confident with the learning objectives


#Which parts of the challenge did you enjoy?
# I actually enjoyed writing the driver code this time! Go figure.
#
#
#Which parts of the challenge did you find tedious?
# none!
#
#




