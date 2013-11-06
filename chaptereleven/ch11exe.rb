#The first problem
Dir.chdir '/home/zarni/Videos'

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

  
  #Checking the File name and modifying it to prevent overwriting
  while File.exist? new_name 
      new_name += a
      File.rename name, new_name
  end

  #Finally, we increment the counter
  pic_number += pic_number
end

Building music playlist

#Shuffle method for playlist
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


#First the directory where we will have the playlist

require 'yaml'
Dir.chdir '/home/zarni/Desktop/MyMusic'

#Array for all the music in the file
playlist = zshuffle(Dir['/home/zarni/Desktop/MyMusic/*.mp3'])

oplaylist = playlist.to_yaml

filename = 'playlist.txt'

File.open filename, 'w' do |f|
    f.write oplaylist
  end

#Better shuffling system
require 'pry'
def better_shuffle playlist

  playlist = playlist.sort
  p_length = playlist.length

  2.times do
    l_index = 0
    r_index = p_length/2
    shu = []
    index = 0
    while index < p_length
      #Take card from the leftpile
      if (index%2 == 0)
        shu.push(playlist[l_index])
        l_index = l_index + 1
      else
      #Take card from the rightpile
        shu.push(playlist[r_index])
        r_index = r_index + 1
      end
      index = index +1
    end
    playlist = shu
    #binding.pry
    #puts "This is the playlist #{playlist}"
  end
# Card the playlist at a random place
  card = rand(p_length)
  fin = []
  index = 0
  while (fin.length < playlist.length)
    fin.push(playlist[(index+card)%p_length])
    index = index + 1
    #puts fin 
  end
  #binding.pry
  fin

end

songs = ['Swift/Love', 'Zipped/Nipped', 'Dickson/Cornell',
         'Swar/Blah', 'Desh/Nesh', 'Blush/Sludsh']

puts(better_shuffle(songs))