class Santa
    def initialize(name, gender,ethnicity)
    	"initializing Santa Instance..."
    	@name = name 
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = "Dancer"
        @age = 0
    end
    	
    def speak(order)
    	@age = (order + 1) * 10
      puts "Ho, ho, ho! Haaaappy Holidays!"
      puts "My age is #{@age}"
    end

    def eat_milk_and_cookies(cookie)
      puts "#{@name.upcase} favorite cookie is #{cookie}"
      
    end
    @age = 0
end


santas = []
example_santa = ["clowny","singer","happy","grumpy"]
example_genders = [ "male", "female","male","female"]
example_ethnicities = ["black", "Latino", "white",  "N/A"]
example_cookies= ["oreo","cameo","homemade","chip ahoy"]

example_santa.length.times do |i|
  santas = Santa.new(example_santa[i], example_genders[i], example_ethnicities[i])
 
  santas.eat_milk_and_cookies(example_cookies[i])
   santas.speak(i)
# p santas
end

