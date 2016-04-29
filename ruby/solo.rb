#design of the racer class:
  # attributes:
  # target age : integer
  # target race_type : string
  # 
  # methods:
  #   tires_change
  #   track_selection
  #   position 
  #   Winner Price

class Racer
  attr_reader :racer_age
  attr_accessor :track_selection, :circuit_loop, :position_num

  def initialize(age, race_type)
    @racer_age = age
    @track_selection = race_type
  end

  def tire_change
    if(@track_selection == "oval" || @track_selection == "road") && ((@circuit_loop/10) * 10) == @circuit_loop
       puts "Please proceed to the pit for tire change"
    end  
  end

  def track_selection_p
      if @racer_age > 21 
         if @track_selection == "oval" 
            puts "Please proceed to Oval Race Track"
         elsif @track_selection == "road"
               puts "Please proceed to Road America Track"
         elsif @track_selection == "quarter"
               puts "Please proceed to Stop Light Track"
         end
      else
         puts "Sorry!!! your only allowed to race go karts!! "     
      end                             
  end            
  
  def winner_price
      if @position_num == 1
          puts "First Place"
      elsif @position_num == 2
            puts "Second Place"
      elsif @position_num == 3
            puts "Third Place"
      else  puts "Sorry try next event."     
      end 
  end                  
                
end

puts "Welcome to the Race Track!\n"

racers = []
try_race = ""
while try_race != "n"
  try_race = ""
  while !["y","n"].include?(try_race)
    puts "\nDo you want to try racing today? (y/n)"
    try_race = gets.chomp
    try_race.downcase!
  end
  if try_race != "n"
    age = ""
    while !age.match(/[0-9]+/)
      puts "How old are you?"
      age = gets.chomp
    end
    race_type_sel = ["oval","road","quarter"]
    race_type = ""
    while !race_type_sel.include?(race_type)
      puts "Which is your prefered racing track? Please type \"oval\" or \"road\" or \"quarter\":"
      race_type = gets.chomp
    end

    racer_person = Racer.new(age.to_i, race_type)
    p racer_person.racer_age
    if race_type != "quarter"
       racer_person.position_num = Random.rand(10)
    else 
       racer_person.position_num = Random.rand(2) 
    end
    racer_person.track_selection_p
    if racer_person.track_selection.include?("oval")
    15.times do |i| 
       puts "This is your number #{i} loop!"
       racer_person.circuit_loop = i
       racer_person.tire_change
    end   
    end
    racer_person.winner_price
    racers.push(racer_person)
  end
end

puts "List of today racers and position:\n"

racers.each { |racer| puts "Racer selected the #{racer.track_selection} track and ended in position #{racer.position_num}."}
    

