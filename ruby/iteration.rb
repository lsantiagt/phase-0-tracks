
#Define Array
cars = ["Cooper S","ASX","ES300h","Carrera S","Sienna"]

#Define Hash
agent_alias ={"Luis" => "zumat", 
	          "Adriana" => "pricess", 
	          "Scott" => "Bronco"}

# Sample for the use of .each
p cars
cars.each { |mycar| puts mycar}
cars.each_index { |mycar| puts mycar}

#Sample for the use of .map

up_cars = cars.map { |mycar| mycar.upcase}

p cars
p up_cars

#Sample for the use of .map!

up_cars = cars.map! { |mycar| mycar.upcase}

p cars
p up_cars


#Sample of .each with a hash


puts "---SAMPLE OF .each in HASH"

agent_alias.each do |name, alias_name| 
	puts "Agent #{name} has alias #{alias_name.upcase}"
end	

puts "---SAMPLE OF Map in HASH (Map in hash returns arrays"
new_alias = agent_alias.map { |name, alias_name| alias_name += "@" }

puts "agent_list= #{agent_alias}"
puts "new_alias = #{new_alias}"


#delete from an array
p cars 

p cars.delete_if {|model| model =="CARRERA S"}

p cars.keep_if {|model| model =="ES300H"}

#delete from hash
p agent_alias.delete_if {|ag, al| al== 'Bronco'}

p agent_alias.keep_if {|ag, al| ag== 'Luis'}
