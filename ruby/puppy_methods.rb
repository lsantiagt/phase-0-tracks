class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
      num.times {puts "Woof!"}
  end

  def roll_over
  	  puts "rolls over"
  end	  

  def dog_years(year)
      dy = year * 7
      puts dy
  end 	

  def sit_down
    puts "sits down"
  end

  def inicialize
    puts "Initializing new puppy instance..."
  end

end

mydog = Puppy.new
mydog.inicialize 
#mydog.initialize does not work since initialize is a builtin method of 
mydog.fetch("ball")
mydog.speak(5)
mydog.roll_over
mydog.dog_years(7)



class Car_maintenance
  
    def initialize
      puts "Initializing groomers instance..."
    end

    def oil_change
      puts "The oil change done!"
    end

    def brake_inspection
      puts "The brakes are ok!"
    end

end

Maintenance_visits = []

50.times do
  puts "Visits "
  Maintenance_visits << Car_maintenance.new 
end

p Maintenance_visits

# iterate through using .each
Maintenance_visits.each do |visit|
  visit.oil_change
  visit.brake_inspection
end