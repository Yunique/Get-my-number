puts 'Welcome to "Get my number!"'
print 'What is your name? '
name = gets.chomp
puts "Welcome to our game #{name}!"
sleep 1

rand_number = rand(100) + 1
guesses = 0
guessed_it = false

print "You need to guess a number from 0 to 100! \n"
sleep 1

until guesses == 10 || guessed_it == true

  puts "You`ve got #{10 - guesses} guesses left!"
  print "Make a guess: "

  input = gets
  until input[/^\d+$/]
    puts "Its not a number. Try one more time"
    input = gets
  end
  number = input.to_i

  if number > rand_number
    puts ""
    puts "Oops. Your guess was HIGH"
  elsif number < rand_number
    puts ""
    puts "Oops. Your guess was LOW"
  elsif number == rand_number
    puts ""
    puts "Good job #{name}!"
    puts "You guessed my number in #{guesses} guesses!"
    guessed_it = true
  end
  guesses += 1
end

unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{rand_number})"
end