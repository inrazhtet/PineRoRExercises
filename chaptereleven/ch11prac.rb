# The file name doesn't have to end
# with ".txt", but, since it is valid
#text, why not?

filename = 'ListerQuote.txt'
test_string = 'I promise that I swear absolutely that ' +
			  'I will never mention gazpacho soup again.'

# The 'w' here is for write-access to the file,
# since we are trying to write on it.

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename
puts (read_string == test_string)

require 'yaml' #Told you it was easy

test_array = ['Give Quiche A Chance', 'Mutants Out!', 'Chameleonic Life-Forms, No Thanks']

# Here's half of the magic
test_string = test_array.to_yaml
#You see? Kind of like "to_s", and it is in fact a string,
#but, it's a YAML description of "test_array"

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

#And the other half of the magic
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

#Diversion: Double-Quoted Strings

buffy_quote_1 = '\'Kiss rocks\'?
                  Why would anyone want to kiss...
                  Oh,wait. I get it.'

buffy_quote_2 = "'Kiss rocks'?\n" +
                "Why would anyone want to kiss...\n" +
                "Oh, wait. I get it."
puts buffy_quote_1
puts
puts (buffy_quote_1 == buffy_quote_2)          

puts "3...\n2...\n1...\nHAPPY NEW YEAR"

puts '3...\n2...\n1...\nHAPPY NEW YEAR'

puts 'single (\') and double (") quotes'
puts "single (') and double (\") quotes"

name = 'Luke'
zip = 90210
puts "Name = #{name}, Zipcode = #{zip}"

puts "#{2 * 10 **4 + 1} Leagues Under the Sea, THE REVENGE!"

#11.6 saving object with YAML

require 'yaml'

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end
#... and now we use these fancy methods
test_array = ['Slick Shoes','Bully Blinders', 'Pinchers of Peril']
# Hey, time for some "me" trivia:
# In Portland, once, I met the guy who played
# Troy's dad. True story.

filename = "DatasGadgets.txt"

#We save it ..
yaml_save test_array,filename

#We load it
read_array = yaml_load filename

#We weep for the po's fools that ain't got it...
puts(read_array == test_array)

puts Dir['ParisHilton.jpg']

#Current directory
puts Dir['*.{JPG,jpg}']
#Parent directory
puts Dir['../*.{JPG,jpg}']
#current directory and all subdirectories
puts Dir['**/*.{JPG,jpg}']
#Changing Directories
Dir.chdir
#Moving and renaming are just about the same thing

# For Katy, with love.
# (I always write little notes in the programs
#  I write for her. I deleted all of the dirty ones, though,
#  so that one is all that's left.
#  This is where she stores her pictures before she gets her
#  YAML on and moves them to the server. Just for my convenience I will go there now.)


Dir.chdir '/home/zarni/Pictures'

#First find all of the pictures to be moved.
pic_names = Dir['/home/zarni/Pictures/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

#This will be our counter. We will start at 1 today,
#though normall, I like to count from 0.

pic_number = 1
pic_names.each do |name|
  print '.' #This is our "progress bar".

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  #This renames the picture, but since"name"
  #has a big long path on it, and "new_name"
  # doesn't, it also moves the file to the current
  # working directory,whch is now Katy's PictureInbox
  # folder. Since it's a *move*, this effectively
  #downloads and deletes the originals. And since this is 
  #a memory card, not a hard drive, each of these takes a second
  # or so hence the little dots let her know that my program
  # didn't hose her machine. (Some marriage advice from your
  # favorite author/programmer: it's all about the little things.)

  #Now where were we? Oh, yeah..
  File.rename name, new_name
  #Finally, we increment the counter
  pic_number += pic_number
end



