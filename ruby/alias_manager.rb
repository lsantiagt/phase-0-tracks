# Alias_manager.rb
# Program to convert names to aliases and print output
#

# Find next vowel method
def next_vowel(n1)
   vlist = 'aeiou'.chars
   #p vlist
   newval = ""
   for x in 0..n1.length.to_i - 1  

       if vlist.include? n1[x]
       	       #p vlist.index(n1[x])
       	       #p vlist.size
            if vlist.index(n1[x]) == vlist.size - 1
            newval << vlist[0] 
            else
            newval << vlist[vlist.index(n1[x]) + 1]       
            end
          
        else
          if n1[x] == nil
          	 newval << " "
          else	 
             newval << n1[x]
          end
       end
       x += 1
   end
   return newval
end

# Method to get next constant
def next_cons(n2)
     newconst=""
     vowels = ["a","e","i","o","u"," "]
    for i in 0..n2.length.to_i - 1  
        if vowels.include? n2[i]
           newconst << n2[i]
        else   	
           if vowels.include? n2[i].downcase.next
       	      newconst << n2[i].next.next
       	   else   
       	      newconst << n2[i].next
       	   end   
        end	  
     end  	
     return newconst
end	

agent_list = []
alias_list = []
vexit = 1
while vexit == 1 do
	
	puts "Please Provide Real Name or <quit> to finish"
	inname = gets.chomp
	

    if inname == "quit"  || inname.empty?
        vexit = 0
    else   
	    name = inname.split(' ')
		name = name[-1] + " " + name[0]
		p name
		
	    agent_list << name
		agent_alias = next_vowel(name.chars)
		
	    agent_alias = next_cons(agent_alias)
		alias_list << agent_alias

    end
   
end
# Print all inputs
for i in 0..agent_list.size - 1
      puts "#{agent_list[i]} is also known as #{alias_list[i]}"
end
