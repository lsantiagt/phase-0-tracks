puts "Hamster's Name:"
name = gets.chomp

puts "Hamster Volume Level"
volume_level = gets.chomp.to_i

puts "Hamster's Fur Color:"
fur_color = gets.chomp

puts "Good candidate? (Y/N)"
good_candidate = gets.chomp.upcase

if good_candidate == 'Y'
  good_candidate = true
else
  good_candidate = false
end

puts "Age:"
age = gets.chomp
if age.empty?
   age = nil
else
   age = age.to_i
end
