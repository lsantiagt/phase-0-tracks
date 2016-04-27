# Method to create a list
# input: string of items separated by spaces
# steps: 
  # separate each item by space - split
  # turn the item into a symbol
  # set value default quantity to 1
# output: hash

def make_hash(list)
  grocery_list = Hash[list.split(' ').map! {|key, value| [key, 1]}]
  return grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  #separate the input
  #insert into list - when we do that, turns the information into key,value
# output: list with hash item included

def add_to_hash(list, item, quantity)
  list.merge!(item => quantity)
  return list
end

# Method to remove an item from the list
# input: item name 
# steps:
  #match input with symbol in the list
  # remove matching key/value pair
# output: list with hash item removed

def delete_to_hash(list, item)
  list.delete(item)
  return list
end

# Method to update the quantity of an item
# input: item name and quantity, state in our prompt item, space, quantity
# steps: 
  #turn input into a key value pair
  #assign value to matching key
# output: list with updated value
###### We decided to reuse the add-to method to overwrite the original


# Method to print a list and make it look pretty
# input: no user input
# steps: 
  #iterate through the list and print each hash item as "key : value"
# output: string
def print_list(grocerylist)
  puts "This is your grocery list:"
  grocerylist.each {|item, quantity| puts "#{item} : #{quantity}"}
end

#Actual code starts here!

puts "Please enter your grocery list items. Please separate them by space, no commas."
foods = gets.chomp
grocery_list = make_hash(foods)

complete = false
until complete
  puts "Please type 'add' ,'remove' ,'update' or 'quit' if you are done."
  answer = gets.chomp
  if answer == "add"
  puts "Please enter your additional grocery list item."
  item = gets.chomp
  
  puts "Please enter your item quantity."
  quantity = gets.chomp.to_i

  grocery_list = add_to_hash(grocery_list, item, quantity)
   print_list(grocery_list)
  elsif answer == "remove"
  puts "Please enter the item to want to delete from the grocery."
  item = gets.chomp

  grocery_list = delete_to_hash(grocery_list, item)
   print_list(grocery_list) 
  elsif answer == "update"
  puts "Please enter the item you would like to update."
  item = gets.chomp

  puts "Please enter your updated quantity."
  quantity = gets.chomp.to_i
  grocery_list = add_to_hash(grocery_list, item, quantity)
    
  print_list(grocery_list)
  elsif answer == "quit"
    complete = true
  end
end

 print_list(grocery_list)

#What did you learn about pseudocode from working on this challenge?
# if you plan during the pseudocode the coding is cleaner and it can be done faster.
#What are the tradeoffs of using arrays and hashes for this challenge?
# Since we have quantities associated to the items the best way to do it was using hashes.  Since array do not allow for associations.
#What does a method return?
# A method can return anything (string, hash, array, integer...)
#What kind of things can you pass into methods as arguments?
# We learn we can pass anything as an argunment to the method, in this case we passed even hashes.
#How can you pass information between methods?
#What concepts were solidified in this challenge, and what concepts are still confusing?
# I understand the use of hashes and practice the use of blocks, two things that have me confused.