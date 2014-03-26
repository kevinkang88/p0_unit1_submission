# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
# define a method called median that takes array of numbers/strings
# as arguments. 
# arrange the numers/strings(ASCII) in ascending order 
# return median of the list
# if the list is even number size then avg 

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def median(ary)
  sorted_ary = ary.sort
  return sorted_ary[ary.size/2] if ary.size % 2 != 0 
  return (sorted_ary[ary.size/2] + sorted_ary[(ary.size/2)-1]) / 2.0
end


# 3. Refactored Solution


def median(ary)
  sorted_ary = ary.sort
  return sorted_ary[ary.size/2] if ary.size.odd?
  return (sorted_ary[ary.size/2] + sorted_ary[(ary.size-1)/2]) / 2.0
end


# 4. Reflection 

# I started out by sorting the array first which is a necesary step to find
# median. Next thing I did was write separate codes for handling odd and 
# even arrays. This was not a big mistake but I could combined both as in 
# line 36. However I had to add line 35 for odd sized string arrays which
# ended up giving me same number of lines anyway. 
# For this exercise I tried to focus on getting all the tests to pass then 
# think about most efficient way to write. Usually I would focus more on 
# refactoring while writing my initial code however the new strategy worked
# better in this case in solving this exercise quickly. 