class Santa

    attr_reader :ethnicity
    attr_accessor :age, :gender ,:name

    def initialize(name, gender ,ethnicity)
    	"initializing Santa Instance..."
    	@name = name 
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking =["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end
    	
    def speak(order)
    	@age = (order + 1) * 10
      puts "Ho, ho, ho! Haaaappy Holidays!"
      #puts "My age is #{@age}"
    end

    def eat_milk_and_cookies(cookie)
      puts "#{@name.upcase} favorite cookie is #{cookie}"
    end
    
   # @age = 0

    def celebrate_birthday
      @age += 1
    end
  
    def get_mad_at(reindeer_name)
      @reindeer_ranking = @reindeer_ranking.delete_if { |reindeer| reindeer_name == reindeer }.push(reindeer_name)
    end
end


santas = []
example_santa = ["clowny","singer","happy","grumpy"]
example_genders = [ "male","female"]
example_ethnicities = ["black", "Latino", "white",  "N/A"]
example_cookies= ["oreo","cameo","homemade","chip ahoy"]

1000.times do |i|
  santas = Santa.new(example_santa.sample, example_genders.sample, example_ethnicities.sample)
  santas.age = Random.rand(140)
  puts "Santa #{santas.name}#{i + 1}  is #{santas.age} years old, #{santas.gender} and ethnicity is #{santas.ethnicity} ."
  santas.eat_milk_and_cookies(example_cookies.sample)
  santas.speak(i)
end


