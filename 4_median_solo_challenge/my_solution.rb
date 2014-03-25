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

# def median(ary)
#   sorted_ary = ary.sort
#   return sorted_ary[ary.size/2] if ary.size % 2 != 0 
#   return (sorted_ary[ary.size/2] + sorted_ary[(ary.size/2)-1]) / 2.0
# end


# 3. Refactored Solution


def median(ary)
  sorted_ary = ary.sort
  return sorted_ary[ary.size/2] if ary.size.odd?
  return (sorted_ary[ary.size/2] + sorted_ary[(ary.size-1)/2]) / 2.0
end


# 4. Reflection 