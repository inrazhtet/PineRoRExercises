#Exercise 1

puts 'Write one word/line as many as you want & press Enter!'
word_lists = []
while true
word = gets.chomp
break if word == ''
word_lists.push word
end
puts 'Sorted Word List!'
puts word_lists.sort


#Exercise 2
lwidth = 50
rwidth = 30
cwidth = 80

content = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1', 'Chapter 2: Numbers', 'page 9',
			'Chapter 3: Letters', 'page 13'	]
l = content.length
puts content[0].center(cwidth)
count = 1
while count < l -1
puts content[count].ljust(lwidth) + content[count + 1].rjust(rwidth)
count = count + 2
end

#As I like the author's solution, I am writing it down
#Exercise 2
title = 'Table of Contents'

chapters = [['Getting Started', 1],
			['Numbers', 9],
			['Letters', 13]]
puts title.center(50)
puts

chap_num = 1

chapters.each do |chap|
	name = chap[0]
	page = chap[1]

	beginning = 'Chapter ' + chap_num.to_s + ': ' + name
	ending = 'page ' + page.to_s

	puts beginning.ljust(30) + ending.rjust(20)
	chap_num = chap_num + 1
end
