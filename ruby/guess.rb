number = rand(10)

puts 'Guess the number'
guess = gets.to_i

while (number != guess) 
    puts "The number is #{number > guess ? 'higher' : 'lower'}"
	guess = gets.to_i
end

puts 'You guessed correctly'