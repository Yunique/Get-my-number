puts 'Добро пожаловать в  "Get my number!"'
print 'Как Вас зовут? '
name = gets.chomp
puts "Добро пожаловать #{name}!"
sleep 1

rand_number = rand(100) + 1
guesses = 0
guessed_it = false

print "Вы должны угадать задуманное число в диапазоне от 0 до 100 \n"
sleep 1

until guesses == 10 || guessed_it == true

  puts "Количество оставшихся попыток: #{10 - guesses}!"
  print "Выберите число: "

  input = gets
  until input[/^\d+$/]
    puts "Это не число! Попробуйте еще раз"
    input = gets
  end
  number = input.to_i

  if number > rand_number
    puts ""
    puts "Упс. Ваше число БОЛЬШЕ задуманного"
  elsif number < rand_number
    puts ""
    puts "Упс. Ваше число МЕНЬШЕ задмуанного"
  elsif number == rand_number
    puts ""
    puts "Хорошая работа #{name}!"
    puts "Вы угадали число за #{guesses} попыток!"
    guessed_it = true
  end
  guesses += 1
end

unless guessed_it
  puts "К сожалению Вы не смогли угадать число (Было задумано #{rand_number})"
end