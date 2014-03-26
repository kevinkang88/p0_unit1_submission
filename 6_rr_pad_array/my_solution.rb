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
# Copy solution here:




# 3. My original solution:



# 4. My refactored solution:




# 5. Reflection