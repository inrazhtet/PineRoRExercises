# #First Recursive Example

# def ask_recursively (question)
#   puts question
#   reply = gets.chomp.downcase

#   if reply == 'yes'
#     true
#   elsif reply == 'no'
#     false
#   else
#     puts 'Please answer "yes" or "no".'
#     ask_recursively (question) #This is the magic line
#   end
# end
  
# ask_recursively "Do you wet your bed?"

# #The typical factorial recursion Example
# def factorial (num)
#   if num < 0
#     return "You can\'t take the factorial of a negative number"    
#   end

#   if num < 1
#     1
#   else
#     num * factorial(num-1)
#   end
# end

# puts factorial(3)
# puts factorial(30)


# #Figuring out the size of the continent

# #These are just to make the map easier for me to read
# # "M" is visaully more dense than "o"

# M = 'land'
# o = 'water'

# world = [[M,M,M,M,M,M,M,M,M,M,M],
#          [o,o,o,o,M,M,o,o,o,o,M],
#          [o,o,o,o,o,o,o,o,M,M,M],
#          [o,o,o,M,o,o,o,o,o,M,M],
#          [o,o,o,M,o,M,M,o,o,o,M],
#          [o,o,o,o,M,M,M,M,o,o,M],
#          [o,o,o,M,M,M,M,M,M,M,M],
#          [o,o,o,M,M,o,M,M,M,o,M],
#          [o,o,o,o,o,o,M,M,o,o,M],
#          [o,o,o,o,o,o,o,o,o,o,M],
#          [M,o,o,o,o,o,o,o,o,o,M]]

# def continent_size (world,x,y)

#   require 'pry'
#   #puts world.length
#   # edge = world.length
#   if (x < 0 || y < 0 || x > edge|| y > edge)
#     puts "Edge of the universe!"
#   end
#   # binding.pry

#   if world[y][x] != 'land'
#     #Either it's water or we already counted it
#     #but either way, we don't want to count it now
#     return 0
#   end

#   size = 1  
#   world [y][x] = 'counted land'

#     size = size + continent_size(world, x-1,y-1)
#     size = size + continent_size(world,x,y-1)
#     size = size + continent_size(world, x+1,y-1)
#     size = size + continent_size(world,x-1,y-1)
#     size = size + continent_size(world,x-1,y)
#     size = size + continent_size(world,x+1,y)
#     size = size + continent_size(world,x,y+1)
#     size = size + continent_size(world,x+1,y+1)
#     size

# end
# puts continent_size(world,5,5)

# #Sorting Array
# require 'pry'
# def recursive_sort unsorted_array,sorted_array
#   # Break when the unsorted array is empty
#   if unsorted_array.empty?
#       return sorted_array
#   end

#   remainder = []

#   smallest = unsorted_array.pop
#   unsorted_array.each do |candidate|
#     if candidate.upcase < smallest.upcase
#         remainder.push(smallest)
#         smallest = candidate
#     else
#         remainder.push(candidate)
#     end
#   end
#     sorted_array.push(smallest)
#     recursive_sort(remainder,sorted_array)
# end
# def sort some_array
#   recursive_sort some_array, []
# end
# puts (sort ["Zarni Htet", "Phu Khat Nwe", "Soe Yu Nwe", "May Mon", "Sithu Htet"])

# #The non-recursive version of sorting
# #Zarni's way

# def sort unsorted_array
#   sorted_array = []
#   until unsorted_array.empty?

#     smallest = unsorted_array[0]
#     unsorted_array.each do |candidate|
#       if candidate.upcase > smallest.upcase
#         smallest = candidate
#       end
#     end
#       point = unsorted_array.find_index(smallest)
#       unsorted_array.delete_at(point)
#       sorted_array.push(smallest)
#   end
#   sorted_array
# end
# puts (sort ["Zarni Htet", "Phu Khat Nwe", "Soe Yu Nwe", "May Mon", "Sithu Htet"])

# Following Stefon's and Steve's way
# Need to come back later. Infinite loop error
# require 'pry'
# def sorted unsorted
#   sorted = []

#   until unsorted.length == 0
#     candidate = unsorted.pop
#     smaller = false

#     unsorted.each do |compare|
#       if (candidate.upcase <= compare.upcase)
#           smaller = true
#       end
#     end
#     smaller ? sorted.push(candidate) : unsorted.unshift(candidate) 
#     puts"this is unsorted array #{unsorted}"
#     puts "this is sorted array #{sorted}"
#   end
#   sorted
# end

# puts (sorted ["abc", "b", "c

# # Implementing the shuffle method

# def zshuffle unshuffled_array

#   shuffled_array = []
#   until unshuffled_array.length == 0
#     num = unshuffled_array.length
#     rnum = rand(num)
#     element = unshuffled_array.fetch(rnum)
#     unshuffled_array.delete_at(rnum)
#     shuffled_array.push(element)
#   end
#   shuffled_array
# end

# puts (zshuffle(["abc", "bde", "C", "ZZz", "azula", "blah blah", "Desmos"]))

# #One more example

# def english_number (number)
#   # We accept numbers from 0 to 100
#   if number < 0
#     return 'Please enter a number zero or greater.'
#   end
#   if number > 100
#     return 'Please enter a number 100 or less.'
#   end

#   num_string = '' # This is the string we will return

#   # "left" is how much of the number we will still have left to write out.
#   # "write" is the part we are writing out right now.
#   # write and left... get it? :)
#   left = number
#   write = left/100          # How many hundreds left?
#   left = left - write*100   # Subtract off those hundred

#   if write > 0
#     return 'one hundred'
#   end

#   write = left/10           # How many tens left?
#   left = left - write * 10  # Subtract off those tens

#   if write > 0
#     if write == 1 # Uh-oh
#       #Since we can't write twenty-two
#       #instead of "twelve", we have to
#       #make a special exception for these
#       if left == 0
#         num_string = num_string + 'ten'
#       elsif left == 1
#         num_string = num_string + 'eleven'
#       elsif left == 2
#         num_string = num_string + 'twelve'
#       elsif left == 3
#         num_string = num_string + 'thirteen'
#       elsif left == 4
#         num_string = num_string + 'fourteen'
#       elsif left == 5
#         num_string = num_string + 'fifteen'
#       elsif left == 6
#         num_string = num_string + 'sixteen'
#       elsif left == 7
#         num_string = num_string + 'seventeen'
#       elsif left == 8
#         num_string = num_string + 'eighteen'
#       elsif left == 9
#         num_string = num_string + 'nineteen'
#       end
#       #Since we took care of the digit in the ones place
#       #already, we have nothing left to write.
#       left = 0
#     elsif write == 2
#       num_string = num_string + 'twenty'
#     elsif write == 3
#       num_string = num_string +  'thirty'
#     elsif write == 4
#       num_string = num_string + 'forty'
#     elsif write == 5
#       num_string = num_string + 'fifty'
#     elsif write == 6
#       num_string = num_string + 'sixty'
#     elsif write == 7
#       num_string = num_string + 'seventy'
#     elsif write == 8
#       num_string = num_string + 'eighty'
#     elsif write == 9
#       num_string = num_string + 'ninety'
#     end

#     if left > 0
#       num_string = num_string + '-'
#     end
#   end
#   write = left    #How many ones left to write out?
#   left = 0        #Subtract off those oens
#   if write > 0
#     if write == 1
#       num_string = num_string + 'one'
#     elsif write == 2
#       num_string = num_string + 'two'
#     elsif write == 3
#       num_string = num_string + 'three'
#     elsif write == 4
#       num_string = num_string + 'four'
#     elsif write == 5
#       num_string = num_string + 'five'
#     elsif write == 6
#       num_string = num_string + 'six'
#     elsif write == 7
#       num_string = num_string + 'seven'
#     elsif write == 8
#       num_string = num_string + 'eight'
#     elsif write == 9
#       num_string = num_string + 'nine'
#     end
#   end
#   if num_string == ''
#     # The only way "num_string" could be empty
#     #is if "number" is 0.  
#     return 'zero'
#   end
#   # If we got this far, then we had a number
#   # somewhere in between 0 and 100, so, we need 
#   # to return "num_string"
#   num_string
# end

# puts english_number (0)
# puts english_number (90)

def english_number number
  if number < 0 # No negative number
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  num_string = '' # This is the string we will return
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight','nine']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty','ninety']


  teenagers = ['eleven','twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']

# "left" is how much of the number we still have left to write out
# "write" is the part we are writing out right now.
# write and left.... get it? :)
  left = number
  write = left/1000 # How many hundreds left?
  left = left - write *1000 #Subtract of those hundreds.

  if write > 0
    # Now here's the recursion:
    thousands = english_number write
    num_string = num_string + thousands + ' thousands'
    if left > 0
      num_string = num_string + ' '
    end
  end

  left = write
  write = left/100 # How many hundreds left?
  left = left - write *100 #Subtract of those hundreds.

  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/10             # How many tens left?
  left = left - write * 10    # Subtract off those tens

  if write > 0
    if ((write == 1) and (left > 0))
      #Since we can't write "tenty-two" instead of 
      #"twelve", we have to make a special exception
      #for these.
      num_string = num_string + teenagers[left - 1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the 
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'
    end
    if left > 0
      # So we don't write 'sixtyfour'
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 #Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'
  end
    #Now we just return "num_string"
    num_string
end

# puts english_number(0)
# puts english_number(9)
# puts english_number(10)
# puts english_number(11)
puts english_number (121202)


                                

