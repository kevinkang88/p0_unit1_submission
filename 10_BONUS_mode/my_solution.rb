# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
#define a method name mode that takes an array as parameter
#iterate through the array and create a Hash with key of
#   element and value of how many times it repeats
#find out the highest value
#display the results in an array
#output is the arry of most repeated element(s)



# 2. Initial Solution
# def mode(array)
#   score = Hash.new(0)
#   array.each do |x|
#     score[x] = score[x] + 1
#   end
#   high_value = score.values.max
#   result = score.select {|k,v| v == high_value}.keys
#   return result 
# end


# 3. Refactored Solution
def mode(array)
  score = Hash.new(0)
  array.each {|x| score[x] = score[x] + 1}
  high_value = score.values.max
  score.select {|k,v| v == high_value}.keys
end


# 4. Reflection 
# Doing more pseudo coding and planning than usual worked well 
# for this exercise. After my initial solution I replaced do..end
# block to {} since it was only one line. Also I thought 
# setting a variable result was unnecesarily taking up memory 
# so I condensed it to one line. However I kept high_value variable
# for readability. Also I used Array#max method which returns
# the element with highest ASCII value. Using hash object made this
# problem much easier. 