# Asking my first, middle and last name and counting them

puts 'What is your first name?'
fname = gets.chomp
fcount = fname.length

puts 'What is your middle name?'
mname = gets.chomp
mcount = mname.length

puts 'What is your last name?'
lname = gets.chomp
lcount = lname.length

acount = fcount + mcount + lcount

puts 'The length of your name is ' + acount.to_s + ' !'

# Angry Boss

puts fname + ', what do you want, a**? '
dem = gets.chomp
puts 'WHADDAYA MEAN ' + ' " ' + dem.upcase + ' "?!? YOU \'RE FIRED!!'

#Table of contents 
l_width = 20
c_width = 20
r_width = 20
cc_width = 60

toc = 'Table ofContents'
ch1 = 'Chapter 1:'
ch2 = 'Chapter 2:'
ch3 = 'Chapter 3:'

gs = 'Getting Started'
num = 'Numbers'
let = 'Letters'

pg1 = 'page 1'
pg2 = 'page 2'
pg3 = 'page 13'

puts (toc.center(cc_width))
puts (ch1.ljust(l_width) + gs.center(c_width)+pg1.rjust(r_width))
puts (ch2.ljust(l_width) + num.center(c_width)+pg2.rjust(r_width))
puts (ch3.ljust(l_width) + let.center(c_width)+pg3.rjust(r_width))



