#problem 1
# puts "What is your name?"

# name = gets.chomp

# puts "Hello #{name}!"

#problem 2

# puts "What is your name?"

# name = gets.chomp
# name.downcase

# if name =="Jack"

# 	puts "Hello #{name}!"

# elsif name == "Jill"
# 	puts "Hello #{name}!"

# else
# 	puts "bye"

# end

#problem 3

# puts "Enter a number, any number."
# user_number = gets.to_i

#  i = 0
#  total_number = 0
#   while i <= user_number
#   	total_number = (i + total_number)
#   	i = (i + 1)
#   end

# response = "Here's your number added up with the numbers preceeding it: #{total_number}"
# puts response

#problem 4

# puts "Enter a number, any number."
# user_number = gets.to_i

# puts "Add or multiply?"
# operator = gets.chomp

#  i = 1
#  total_number = 1

# if operator == "Add"

#    while i <= user_number
#    		total_number = (i + total_number)
# 	  	i = (i + 1)
# 	  	puts total_number
#    end

#   elsif operator == "Multiply"

#    while i <= user_number
#    		total_number = (i * total_number)
# 	  	i = (i + 1)
# 	  	puts total_number
# 	 end

# end

#problem 5 Secret Number 

# secret_number = 42

# puts "Guess the number please"

# tries = 1

# while tries <= 3
# 	guess = gets.chomp.to_i
# 	if guess == secret_number
# 		puts "You win!"
# 		puts "You have tried #{tries} time"
# 		guess == 0

# 	elsif guess > secret_number
# 		puts "TOO BIG"
# 		puts "You have tried #{tries} time"
# 		guess == 0

# 	elsif guess < secret_number
# 		puts "TOO SMALL"
# 		puts "You have tried #{tries} time"
# 		guess == 0

# 	end

# 	tries = (tries +1 )

# 	if tries > 3
# 		puts "No more guesses left"
# 	end
# end
#experiment

# secret_number = 42

# puts "Guess the number please"

# tries = 1

# while tries <= 3
# 	guess = gets.chomp.to_i
# 	if guess == secret_number
# 		puts "You win!"
# 		puts "You have tried #{tries} time"
# 		guess == 0

# 	elsif guess > secret_number
# 		puts "TOO BIG"
# 		puts "You have tried #{tries} times"
# 		guess == 0

# 	elsif guess < secret_number
# 		puts "TOO SMALL"
# 		puts "You have tried #{tries}time"
# 		guess == 0

# 	end

# 	if tries >= 3
# 		puts "No more guesses left"
# 	else puts "Guess again."
# 		tries = (tries +1 )
# 	end

# end

#problem 6 sparkle magic

strings = ["Hello", "World", "in", "inside", "a", "frame" ]

#strings.max_by {|string| string.length = longest_word}

# longest = strings.max_by {|string}

# #puts = longest_word

# strings do |string|
# 	string.length
# 	puts string
# end

#trings.each do |string|

# longest = (strings.max_by {|string| string.length}).length
# #puts longest

# strings.each do |string|
# 	difference = longest - string.length

# 	difference.times do 
# 		string << " "
# 	end

# end

# (longest + 2).times do
# 	print "*"
# 	end
# 	print "\n"

# strings.map do |string|
# 	string.prepend "*"
# 	string << "*" 
# end

# strings.each {|string| puts string}


# (longest + 2).times do
# 	print "*"
# 	end
	
#problem 7 modulus numbers

# n = 1

# while n <= 75

# 	if n%3 == 0 && n%5 == 0
# 		puts "BewdRocks!"

# 	elsif n%3 == 0
# 		 puts "Bewd"

# 	elsif n%5 == 0
# 		puts "Rocks"

# else puts n
# 	end

# n = (n +1)

# end


#problem 8 Weather Stats
#outputs the day number (column 1) with the smallest temperature spread (Max temperature is column two. Min temperature is column three).
#first, we read the corresponding weather file. 
# better convention in the file path bit is to not put the absolute path, but rather the relative path. Thanks @milsyobtaf.
# for testing purposes I did puts weather_data Hooray it werks.
#changed to .readlines to read the file in as lines
weather_data = File.readlines("weather.txt")
small_array = []
master_array = []
# need to find a way to organize hte data in the text file and push it into a new array, which could then be split up 
#http://stackoverflow.com/questions/5809093/how-do-i-read-line-by-line-a-text-file-in-ruby-hosting-it-on-s3
#http://stackoverflow.com/questions/5545068/what-are-all-the-common-ways-to-read-a-file-in-ruby/5545284#5545284


weather_data.each do |line|
	small_array.push(line.split (" "))
	# puts small_array[3]
	# puts "-----"
	#This says put the weather data into an array and then split up lines ONLY after a space, as otehrwise it reads characters as index positions
	
end

#This says ok for small_array, for each element, you're going to do some math and then you're going to push it into a new array called master_array
small_array.each do |x|	
#master_array.push(x)
master_array.push(x[1].to_i - x[2].to_i)
end

#janky way of getting rid of the elements in the first two positions, which were both 0 bc they were text and a blank respectively.
master_array.shift
master_array.shift

#print master_array.min for science to see what the minimum number in the array is

#This stuff basically says, set a variable best day to be the index position of the smallest value in the master array. But because we shifted those
#first two positions, we're going to have to add one :-(
best_day = master_array.index(master_array.min)
print "The day in June with the smallest temperature spread is June #{best_day +1 }"

	

#cruft
#spread = small_array[1].to_i - small_array[2].to_i
# puts spread
# small_array.delete_at(1)






