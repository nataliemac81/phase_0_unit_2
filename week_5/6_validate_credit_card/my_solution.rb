# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: number(16 digits)
# Output: true or false
# Steps:
# create CreditCard validation class
# create double_digit method
# create add_digits method
# create a method that checks to see if the sum if a multiple of 10
#


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(card_num)
  	@card_num = card_num.to_s.split(//)
  	if card_num.length != 16
  		raise ArgumentError.new("Sorry. That is not a valid credit card number.")
  	end

  	def double_digits
  		#add code here
  	end

  	def add_digits
  		#add code here
  	end
  		
  	end

  	def check_card
  		if total % 10 == 0
  		  return true
  		else
  		  return false
  		end
  	end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# I couldn't figure out the methods for doubling digits and adding digits. I'll will definitely come back to it
# because I'm close to getting it, I think. lol.
#
#
