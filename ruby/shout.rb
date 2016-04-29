# module Shout
#   # we'll put some methods here soon, but this code is fine for now!

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# puts Shout.yell_happilly("Hamburgers")


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yell_hapilly(words)
    words + "!!!" + " :)" 
  end
end

class Emotions
  include Shout
end



puts Emotions.new.yell_angrily("Stop yelling at me!")
puts Emotions.new.yell_hapilly("Let's party on tonight")