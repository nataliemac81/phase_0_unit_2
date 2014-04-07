

# U2.W4: Cipher Challenge


# I worked on this challenge with Natalie Frecka.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it3 works! Also refer to the ruby docs.
  decoded_sentence = []
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  code_alphabet = alphabet.rotate(4)
  cipher = Hash[code_alphabet.zip alphabet]
  
  =begin
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
  =end
  
  input.each do |x| # each looks at every element in the array and takes it through the do loop.
    found_match = false  # This sets the default for found_match to false.
    cipher.each_key do |y| # The #each_key takes the keys from the cipher hash and begins to run the if else statements below
      if x == y  # this is comparing the character you input and the key from the cipher hash. It's getting x from your input.  It's getting y from the cipher hash. 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] # This pushes the cipher key to the decoded_sentence array
        found_match = true # This is saying that found_match is true in this case, since x == y.
        break  # Breaks the if loop and skips the elsifs.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # checks to see if your input (x) is equal to one of these symbols.
        decoded_sentence << " "# this pushes the symbols to decoded_sentence as an empty string.
        found_match = true # This is saying that found_match is true in this case.
        break # this ends the elsif loop.
      elsif (0..9).to_a.include?(x) # This asks if our input includes any integer from 0-9. If it does, then it will run the elsif code below.
        decoded_sentence << x # this pushes the x to decoded_sentence.
        found_match = true # This is saying that found_match is true in this case.
        break # this ends the elsif loop.
      end # this ends the if else statement
    end # this ends the do loop
    if not found_match  # if your input (x) does not match any of the instances above, then run the code on the next line.
      decoded_sentence << x # pushes x to the decoded_sentence array.
    end # ends the if not code
  end # ends the if statement
  decoded_sentence = decoded_sentence.join("") # This takes the decoded_sentence array and joins it with no spaces inbetween. 
 
  if decoded_sentence.match(/\d+/) # if the decoded_sentence array contains a digit of one or more, then run the code below.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # for the digit found above, turn the string number into an integer and divide by 100 and replace.
  end  # ends the if loop.
  return decoded_sentence # Returns the string decoded_sentence after making all of the changes.        
end # ends the method

# Your Refactored Solution





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"


# Reflection
# this challenge was actually pretty fun. It was helpful to go through each line and try and figure out each bit of code.
# It helped to solidify how much I know and how much I still don't know or concepts I'm still confused about. Natalie and
# I found we had confusion about some of the same concepts and it was good to talk it out and not feel like I wasn't alone
# in not quite grasping some things yet. I definitely feel confident in most of the concepts presented in this challenge. I'm
# still not clear on regular expressions yet.
#
 
