client_info = {}
  
puts "Please enter Client Name"
  client_info[:name]  = gets.chomp

puts "Please enter Client Age"
  client_info[:age]  = gets.chomp.to_i

puts "Please enter client number of children"
  client_info[:num_children]  = gets.chomp.to_i

puts "Please enter client number decor theme"
  client_info[:decor_theme]  = gets.chomp

puts "Please enter if client likes natural wood"
  lwood = gets.chomp.downcase
if lwood == "true" 
   client_info[:likes_wood] = true
else
  client_info[:likes_wood]  = false
end 
puts ""
p "client info #{client_info}"
puts ""
puts "Information entered"
puts "Client Name: #{client_info[:name]}"
puts "Age: #{client_info[:age]}"
puts "Number of Children: #{client_info[:num_children]}"
puts "Decor Theme: #{client_info[:decor_theme]}"
puts "Natural Wood: #{client_info[:likes_wood]}"
puts "Would you like to change a value, please enter: name / age / child / decor_theme / likes_wood / none"
choice = gets.chomp.to_sym



if choice == :name ||choice == :age || choice == :child || choice == :decor_theme|| choice == :likes_wood         

   puts "Please enter information for #{choice}"
   client_info[choice] = gets.chomp

end

p "client info #{client_info}"

