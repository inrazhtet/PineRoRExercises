# #New Classes

# alpha = Array.new + [12345]
# beta = String.new + 'hello'
# karma = Time.new

# puts "alpha = #{alpha}"
# puts "beta = #{beta}"
# puts "karma = #{karma}"

# #Time Classes

# time = Time.new # The moment we ran this code.
# time2 = time + 60 # One Minute Later

# puts time 
# puts time2

# #What the hell is daylights saving time?
# puts Time.local(2000,1,1)			#Y2K
# puts Time.local(1990,12,11,4,30)	#When I was born

# puts Time.gm(1955,11,5)				#A red-letter time

# #An earlier time is less than a later time
# #Difference between time is in seconds

# #Hashes

# dict_array = [] # array literal; same as Array.new
# dict_hash = {}  # hash literal; same as Hash.new

# dict_array[0] = 'candle'
# dict_array[1] = 'glasses'
# dict_array[2] = 'truck'
# dict_array[3] = 'Alicia'
# dict_hash['shia-a'] = 'candle'
# dict_hash['shaya'] = 'glasses'
# dict_hash['shasha'] ='truck'
# dict_hash['sh-sha'] = 'Alicia'

# dict_array.each do |word|
# 		puts word
# end

# dict_hash.each do |c_word, word|
#   puts"#{c_word}: #{word}"
# end

# werid_hash = Hash.new
# werid_hash [12] = 'monkeys'
# werid_hash[[]] = 'emptiness'
# werid_hash[Time.new] = 'no time like the present'

# werid_hash.each do |tee, bee|
#     puts "#{tee} : #{bee}"
#   end

# #Range Class

# # This is your range literal.
# letters = 'a'..'c'

# #Confirm range to array
# puts(['a','b', 'c'] == letters.to_a)

# #Iterate over a range:
# ('A'..'Z').each do |letter|
#   print letter
# end

# #Stringy Superpowers

# prof = "We tore the universe a new space-hole, alright!"
# puts prof[12, 8]
# puts prof[12..19] # 8 characters total


