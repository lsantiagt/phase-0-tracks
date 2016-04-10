puts "How many employees you want to process now?"
empcnt = gets.chomp.to_i

until empcnt == 0
  empcnt = empcnt - 1

  puts "What is your name?"
  empname = gets.chomp

  puts "How old are you?"
  empage = gets.chomp.to_i

  puts "What year were you born? ex. 2008"
  empbornyear = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
  emp_want_garlic = gets.chomp.upcase
  if emp_want_garlic == 'Y'
     emp_garlic = true
  else
      emp_garlic = false
  end

  puts "Would you like to enroll in the company’s health insurance? (Y/N)"
  emp_want_insurance = gets.chomp.upcase
  if emp_want_insurance == 'Y'
     emp_insurance = true
  else
      emp_insurance = false
  end


  puts "Do the employee has any allergies? Please enter them 1 by 1, when finish type done."

  emp_allergies = ""

  while emp_allergies != "done" && emp_allergies != "sunshine"
     emp_allergies = gets.chomp
  end

  if emp_allergies != "sunshine"
      if  Time.new.year - empbornyear == empage  && emp_garlic
         puts "Probably not a vampire"
      elsif Time.new.year - empbornyear != empage && (emp_garlic || !emp_insurance)
          puts "Probably a Vampire"
      elsif Time.new.year - empbornyear != empage && emp_garlic && !emp_insurance
          puts "Almost certainly a vampire"
      end
  else
       puts "Probably a vampire."
  end

  if empname == "Drake Cula" || empname == "Tu Fang"
     puts "Definitely a vampire"
  else
    puts "Result inconclusive"
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end # End while
