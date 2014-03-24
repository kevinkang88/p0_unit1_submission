# U1.W3: Calculate a letter grade!

# I worked on this challenge [by myself].

# 1. Pseudocode

# define a method named, get_grade, that takes parameter of array
# find the average of those values 
# if average is between 90,100 return string A
# if average is between 80,90  return string B
# if average is between 70,80  return string C
# if average is between 60,70  return string D
# everything else return string              F


# 2. Initial Solution
def get_grade(score_ary)
  avg = (score_ary.inject {|memo,n| memo + n})/(score_ary.size)
  case avg 
    when (90..100) then "A"
    when (80...90) then "B"
    when (70...80) then "C"
    when (60...70) then "D"
    else                "F"
  end
end

# 3. Refactored Solution



# 4. Reflection 