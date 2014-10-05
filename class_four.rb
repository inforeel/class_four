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

weather_data = File.read("/Users/rebareel/bewd_2014/class_four/weather.txt")
puts weather_data












