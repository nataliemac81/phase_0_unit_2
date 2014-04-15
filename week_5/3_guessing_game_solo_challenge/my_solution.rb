# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a guess (integer)
# Output: :low if guess is lower than answer, correct if equal to answer, :high if larger than answer, true if most recent guess was correct, false if
# it was not.
# Steps:
# create a class called GuessingGame 
# initialize class with an integer called answer
# define an instance method called guess which takes an integer called guess as its input
# guess should return the symbol :high  if the guess is larger than the answer
# guess should return the symbol :correct if guess is equal to the answer
# guess should return the symbol :low if the guess is lower than the answer
# define an instance method called solved? that returns true if the most recent guess was correct and false if it was not
#
#
#
#


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @correct = false
  end
  
  def guess(guess1)
  	if guess1 > @answer
  	  return :high
  	elsif guess1 < @answer
  	  return :low
  	elsif guess1 == @answer
  	  return :correct
  	else
  	  return "guess not valid"
  	end

  def solved?
  	@correct
  end
 end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @correct = false
  end
  
  def guess(guess1)
  	if guess1 > @answer
  	  return :high
  	elsif guess1 == @answer
  	  return :correct
  	else guess1 < @answer
  	  return :low

  def solved?
  	@correct
  end
 end








# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(12)

puts game.instance_method(:initialize).arity == 1
puts game.method_defined?(:guess) == true
puts game.instance_method(:guess).arity == 1
puts game.guess(12) == :correct
puts game.guess(0) == :low
puts game.guess(100) == :high
puts game.guess(12).solved? == true






# 5. Reflection 
# With this challenge I actually worked through creating Driver Code first, then pseudocode. This time
# around it actually did help when it came time to write my initial code. I didn't really have any
# issues on this challenge and it was probably the first time I didn't have to refer to ruby docs or stack
# stack overflow to complete a challenge. Yay me!!
#
#
#
