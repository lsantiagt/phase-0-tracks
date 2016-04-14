puts "Hamster's Name:"
name = gets.chomp

puts "Hamster Volume Level (1 to 10)"
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

puts "Age in days:"
age = gets.chomp
if age.empty?
   age = nil
else
   age = age.to_i
end

puts "You have register #{name} with volume level #{volume_level} and the fur color is #{fur_color}. ;"

if age == nil
   puts "The age of the hamster is unknown."
else
   puts "The age of the hamster is #{age}."
end

if good_candidate
   puts "Is a good candidate for adoption"
else
   puts "Is not a good candidate for adoptions"
end

case volume_level
when 0,1,2,3
    puts "Is silent!"
when 4,5,6
    puts "Is not that noicy!"
when 7,8,9,10
    puts "Is really noicy!!"
else
    puts "Our guess is, that is really silent!! "
end
