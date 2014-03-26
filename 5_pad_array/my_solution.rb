# U1.W3: Pad an Array!

# I worked on this challenge [with: Jon Pabico].

# 1. Pseudocode

#define a Array#pad method that accepts minimum size integer x,and an optional pad value y as parameters
#if the array(ex.[1,2,3]) is less than x(ex.5) return a new array with original minimum length x(ex.[1,2,3,y,y]]
#if the x is less than or equal to Array size than return original array
#
#define a Array#pad! method that accepts minimum size integer and an optional pad value as parameters
#same as Array#pad but minipulate the original array
#
#

# 2. Initial Solution

class Array
  def pad(min_size,opt_pad=nil)
    new_array =  Array.new() + self
    array_length = self.length
    pad_size = min_size - array_length
    if min_size <= array_length
      return new_array
    elsif min_size > array_length
      pad_size.times do
        new_array.push(opt_pad)
      end
      return new_array
    end
  end
  
  def pad!(min_size,opt_pad=nil)
    extra = min_size - self.length
    if min_size <= self.length
      self 
    elsif min_size > self.length
      extra.times do
        self.push(opt_pad)
      end
      self
    end
  end
end

# 3. Refactored Solution

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

# 4. Reflection 

# We had a good strategy of defining separate variables such as pad_size which is not totally
# necessary but great for readability. Also the use of times loop  was a great choice in making 
# this problem simple. We first focused on writing solution for Array#pad first. After making sure 
# it passed all tests we made simple tweaks to destruct the original array and created Array#pad!.
# We had small problem running tests at first due to typo in writing variables but we figured it out
# quickly. Most enjoyable part about this exercise was figuring out how to tackle the problem.