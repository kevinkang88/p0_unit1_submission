# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself]



# 1. First Person's solution I liked
# catherinev took different path compared to my solution in solving this
# problem. They started writing code for Array#pad! since, it was faster 
# to write destructive self than the opposite. I also thought Array#map 
# was a clever way to assign self a new object id without altering its 
# contents. Also learned how for..in iteration method can be useful to
# adding paddings as well. To improve this code, they could eliminate 
# explicit return keywords.    
# Copy solution here:
class Array 
    def pad (number, object = nil)
		new_array = self.map{|a| a}
		if new_array.length >= number
			return new_array
		else
			for i in new_array.length...number
				new_array [i] = object
			end
			return new_array
		end
	end

	def pad! (number, object = nil)
		if self.length >= number
			return self
		else
			for i in self.length...number
				self [i] = object
			end
			return self
		end
	end
end



# 2. Second Person's solution I liked
#    What I learned from this solution

# zmitton's solution caught my eye because of how he solved the problem 
# within ten lines. He defined Array#pad! first then implemented it 
# inside Array#pad. I learned clone method which duplicates an object 
# with different id which is perfect for non destructible method such as 
# pad. Also the use of until method made the code very readable. I cannot 
# find any way to refactor this code any further.

# Copy solution here:

class Array
    def pad!(minlength, fillValue = nil)
        self << fillValue until self.length >= minlength
        return self
    end
    
    def pad(minlength, fillValue = nil)
        self.clone.pad!(minlength, fillValue)
    end
end



# 3. My original solution:

class Array
  def pad(min_size,opt_pad=nil)
    new_array = [] + self
    array_length = self.length
    pad_size = min_size - array_length
    if min_size <= array_length
      new_array
    else
      pad_size.times { new_array.push(opt_pad) }
    end
    new_array
  end

  def pad!(min_size,opt_pad=nil)
    pad_size = min_size - self.length
    if min_size <= self.length
      self 
    else
      pad_size.times { self.push(opt_pad) }
    end
    self
  end
end

# 4. My refactored solution:

class Array
  def pad(min_size,opt_pad=nil)
    self.clone.pad!(min_size,opt_pad)
  end

  def pad!(min_size,opt_pad=nil)
    pad_size = min_size - self.length
    if min_size <= self.length
      self 
    else
      pad_size.times { self.push(opt_pad) }
    end
    self
  end
end


# 5. Reflection

#
What parts of your strategy worked? What problems did you face?
What questions did you have while coding? What resources did you find to help you answer them?
What concepts are you having trouble with, or did you just figure something out? If so, what?
Did you learn any new skills or tricks?
How confident are you with each of the learning objectives?
Which parts of the challenge did you enjoy?
Which parts of the challenge did you find tedious?

