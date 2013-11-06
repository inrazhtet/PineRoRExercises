#Sorting Array
require 'pry'
def recursive_sort unsorted_array,sorted_array
  # Break when the unsorted array is empty
  if unsorted_array.empty?
      return sorted_array
  end

  remainder = []

  smallest = unsorted_array.pop
  unsorted_array.each do |candidate|
    if candidate.upcase < smallest.upcase
        remainder.push(smallest)
        smallest = candidate
    else
        remainder.push(candidate)
    end
  end
    sorted_array.push(smallest)
    recursive_sort(remainder,sorted_array)
end
def sort some_array
  recursive_sort some_array, []
end
puts (sort ["Zarni Htet", "Phu Khat Nwe", "Soe Yu Nwe", "May Mon", "Sithu Htet"])

#The non-recursive version of sorting
#Zarni's way 
#Dictionary sort implemented as well

def sort unsorted_array
  sorted_array = []
  until unsorted_array.empty?

    smallest = unsorted_array[0]
    unsorted_array.each do |candidate|
      if candidate.upcase > smallest.upcase
        smallest = candidate
      end
    end
      point = unsorted_array.find_index(smallest)
      unsorted_array.delete_at(point)
      sorted_array.push(smallest)
  end
  sorted_array
end
puts (sort ["Zarni Htet", "Phu Khat Nwe", "Soe Yu Nwe", "May Mon", "Sithu Htet"])

# Following Stefon's and Steve's way
# Need to come back later. Infinite loop error

require 'pry'
def sorted unsorted
  sorted = []

  until unsorted.length == 0
    candidate = unsorted.pop
    smaller = false

    unsorted.each do |compare|
      if (candidate.upcase <= compare.upcase)
          smaller = true
      end
    end
    smaller ? sorted.push(candidate) : unsorted.unshift(candidate) 
    puts"this is unsorted array #{unsorted}"
    puts "this is sorted array #{sorted}"
  end
  sorted
end

puts (sorted ["abc", "b", "c"])

# Implementing the shuffle method

def zshuffle unshuffled_array

  shuffled_array = []
  until unshuffled_array.length == 0
    num = unshuffled_array.length
    rnum = rand(num)
    element = unshuffled_array.fetch(rnum)
    unshuffled_array.delete_at(rnum)
    shuffled_array.push(element)
  end
  shuffled_array
end

puts (zshuffle(["abc", "bde", "C", "ZZz", "azula", "blah blah", "Desmos"]))