
def build_array(x, y, z)
   ary5 = [x,y,z]
   return ary5
end

def add_to_array(a, b)
    a << b
    return a
end

ary6 = build_array(1,"two", nil)
puts "This is Build Array #{ary6}"

add_to_array(ary6, "a")
puts "This is Add Array #{ary6}"

ary7 = add_to_array([], "a")
puts "This is Add Array sample of Release2.2.1 #{ary7}"

ary7 = add_to_array(["a", "b", "c", 1, 2], 3)
puts "This is Add Array sample of Release2.2.2 #{ary7}"


ary = Array.new

p ary

ary = ["pets"]

ary << "dogs"

ary.insert(1,"cats")

ary.push("hamsters")

ary.unshift("bears")

p ary

ary.delete_at(2)

p ary

ary.insert(2,"fish")

p ary

ary.shift

p ary

  puts "does the array contains the variable 'dog' #{ary.include?("dogs")}."

ary2 = ["Dodge","Ford","BMW","MINI","Chevrolet"]

p ary2

ary3 = ary + ary2

p ary3
