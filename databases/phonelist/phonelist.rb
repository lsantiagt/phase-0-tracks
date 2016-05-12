
# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("phonelist.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS phonelist(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    cellphone varchar2(20)
  )
SQL

# create a phonelist table (if it's not there already)
db.execute(create_table_cmd)

# Define insert method to inser name and phone into table

def create_phonelist(db, name, cellphone)
  db.execute("INSERT INTO phonelist (name, cellphone) VALUES (?, ?)", [name, cellphone])
end

def list_phonelist(db)
    plist = db.execute("select * from phonelist")
    #puts plist.class
    #p plist
    puts "EMPLOYEE PHONE LIST:"
    plist.each do |employee|
    	puts "#{employee['name']} -- #{employee['cellphone']}"
    end
end

def update_phone(db, name, cellphone)
    db.execute("UPDATE phonelist set cellphone = ? where name = ?", [cellphone,name])
end

def get_phone(db, name)
	plist = db.execute("SELECT * from phonelist where name = ? ", [name])
	if plist.length == 0 then
       return false
    end 
	plist.each do |emp|
	    puts "Employee: #{emp['name']} phone number is #{emp['cellphone']}"
	end
	return true
end

def del_phone(db, name)
    
    puts "Are you sure you want to delete this employee: (y/n)"
    sure = gets.chomp.upcase
    if sure =='Y' then 
       db.execute("delete from phonelist where name = ?", [name])
       puts "Record Deleted"
    end
end

# Initialize Table
#10.times do 
#   create_phonelist(db,  Faker::Name.name, Faker::PhoneNumber.phone_number)
#end

# Driver Code
selection = ""
while selection != "q" 
	

	puts " M E N U  O P T I O N S \n"
	puts " 1 - List the employee phones"
	puts " 2 - Insert new employee phone"
	puts " 3 - Update an employee phone"
	puts " 4 - Delete Employee from list"
	puts " q - Exit \n"

    puts "\n Please select: \n"
    selection = gets.chomp 

    if selection == "1" then
	   list_phonelist(db)
    elsif selection == "2"
       puts "Please provide employee name:"
       name = gets.chomp
       puts "Please enter employee phone number:"
       phone = gets.chomp
       create_phonelist(db, name, phone)   
    elsif selection == "3"
       puts "Please provide employee you want to update phone"
       name = gets.chomp
       if get_phone(db, name) then
          puts "New phone number is:"
          phone = gets.chomp
          update_phone(db, name, phone)
       end    
    elsif selection == "4"
       puts "Please provide employee to delete from phone list:"
       name = gets.chomp
       if get_phone(db, name) then
          del_phone(db,name)
       end   	   
    end


end