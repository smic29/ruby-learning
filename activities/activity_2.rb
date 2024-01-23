puts "ACTIVITY 2"
DIVIDER = "--"*10
puts ''
puts "#1"
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include? number
  ans = 'Yes'
else
  ans = 'No'
end

puts "is #{number} in #{arr}? #{ans}"
puts DIVIDER
puts ''

puts "#2"
print "Enter a number between 0 and 100: "
num_input = gets.chomp.to_i
puts ''
if num_input <= 50
  puts "#{num_input} is between 0 and 50"
elsif num_input >50 && num_input <=100
  puts "#{num_input} is between 51 and 100"
else
  puts "#{num_input} is above 100"
end
puts DIVIDER
puts ''

puts '#3'
user_input = ''
puts "Type something, anything."

while user_input != 'STOP'
  user_input = gets.chomp
  puts 'That\'s nice, type something else'
end
puts 'Why\'d you stop?'
puts DIVIDER
puts ''

puts '#4'
arr_four = [ 6, 3, 1, 8, 4, 2, 10, 65, 102 ]
puts "Numbers divisible by 2 in this array #{arr_four} are..."
new_arr = []
arr_four.each do |num|
  num_check = num % 2
  if num_check == 0
    new_arr.push(num)
  end
end
puts "#{new_arr}"
