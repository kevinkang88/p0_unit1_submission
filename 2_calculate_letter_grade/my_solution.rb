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
# I do not see how I can improve this code. It is concise and passes all the tests.
# I can see that case statement can be repetitive and may not follow DRY rule
# but I do not know how to refactor the code	


# 4. Reflection 
# My strategy of getting an average and comparing them to corresponding ranges
# worked. I used case statement instead of if/else statement from the start and
# the code came out more clean. I had a question when the spec file had something
# errors but after the correction, the process went smoothly. New skill that I
# learned was chaining methods after closing curly brace which I did not know
# it was possible until I experimented with them. I actually enjoyed this challenge
# when there was an error in the spec file. I had to squeeze my brain to get an answer
# and it was challenging. 