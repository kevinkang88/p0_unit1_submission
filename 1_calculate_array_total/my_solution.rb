# U1.W3: Add it up!


# I worked on this challenge [with: Jon Pabico]

# 1. Pseudocode

# define method called "total"
# it will take one argument (an array)
# it will return the sum of the numbers in the array
# define method called sentence_maker 
# it will take one argument (an array)
# it will join all elements and capitalize the first word and add a period at the end

# 2. Initial Solution
def total(array)
  array.inject(0) {|memo,n| memo + n}
end

def sentence_maker(array)
  array.join(" ").capitalize! + "."
end


# 3. Refactored Solution

def total(num_array)
  num_array.inject(0) {|memo,n| memo + n}
end

def sentence_maker(array)
    "#{array.join(" ").capitalize!}."
end


# 4. Reflection 

# Our strategy of finding optimal built in method suitable to solve problem worked. We were able to find
# more more efficient way to solve problems easier. We faced a small problem when our test did not pass and
# gave us funky results for sentence_maker method. However we figured out there was a problem in rspec file
# and everything worked fine after that. We had to refresh our memories on how to use inject method and also
# some basics of interpolation after working with HTML, CSS & Javascript but it came back to us easily.
# I enjoyed refactoring because at first we thought nothing could be changed to make our initial solution better.
# After discovering concatenation was not necessary just to add a period we replaced it with interpolation.

