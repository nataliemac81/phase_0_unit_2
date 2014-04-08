# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # defines a method called translate_to_cipher which takes a sentence as an argument.
    alphabet = ('a'..'z').to_a # defines the variable alphabet, turns it into an array.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # rotate method returns a new array from the alphabet variable starting at the 4th element in the
    # array. The .zip method turns the alphabet into a new array based on the rotated alphabet. The new arrays are turned into a hash set to a variable
    # called cipher.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # defines variable spaces as an array of symbols.
    
    original_sentence = sentence.downcase # .downcase method makes the original sentence lowercase.
    encoded_sentence = [] # sets encoded_sentence equal to an empty array.
    original_sentence.each_char do |element| # loops through each element of the original_sentence.
      if cipher.include?(element) # if the cipher contains any element in the alphabet...
        encoded_sentence << cipher[element] # pushes the cipher element to the encoded_sentence array.
      elsif element == ' ' # or if the element is equal to a space...
        encoded_sentence << spaces.sample # pushes a random element from spaces array to the encoded_sentence array. 
      else # if not...
        encoded_sentence << element # pushes the element to the encoded_sentence array.
      end # ends the if else statement.
     end
    
    return encoded_sentence.join # joins the elements in the encoded_sentence array into a sentence (string.)
end # ends the method definition.


# Questions:
# 1. What is the .to_a method doing? # the .to_a method turns the string into an array.
# 2. How does the rotate method work? What does it work on?
# 3. What is `each_char` doing? # each_char is iterating through each character in the string.
# 4. What does `sample` do? #takes an element at random from the array.
# 5. Are there any other methods you want to understand better? Defintely .zip. I'm still a bit confused as to how it works.
# 6. Does this code look better or worse than your refactored solution. 
#    of the original cipher code? What's better? What's worse? # It looks better than my refactored solution. More concise for sure.
# 7. Is this good code? What makes it good? What makes it bad? # I don't know if I'm sure what makes it bad code but I think what makes
# it good code is that it's readable and pretty DRY. Maybe the the loop could be a block instead and that would make it a bit more readable.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? # yes...well, the symbols are different.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
# I didn't have a strategy for this one. I quickly answered the parts I knew and looked up the ones I didn't.
#
#

# What questions did you have while coding? What resources did you find to help you answer them?
# I used the ruby docs to look up methods.
#

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Still having some trouble with the .zip method.


# Did you learn any new skills or tricks?
# no


# How confident are you with each of the learning objectives?
# pretty confident with the learning objectives for this one.
#

# Which parts of the challenge did you enjoy?
# I really enjoyed all of it. It helps going line by line and saying what I think each line is doing.
#
# Which parts of the challenge did you find tedious?
# none
