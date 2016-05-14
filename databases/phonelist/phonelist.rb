
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

create_table_cmd2 = <<-SQL
  CREATE TABLE IF NOT EXISTS auditlog(
    id INTEGER PRIMARY KEY,
    trantype VARCHAR(255),
    trandate date,
    befdata varchar2(255),
    afterdata varchar2(255)
  )
SQL

# create a phonelist table (if it's not there already)
db.execute(create_table_cmd)
db.execute(create_table_cmd2)

# Define insert method to inser name and phone into table

def create_phonelist(db, name, cellphone)
  db.execute("INSERT INTO phonelist (name, cellphone) VALUES (?, ?)", [name, cellphone])
  auditlog(db, "Insert", nil , name + ' '+ cellphone)
end

# Define method to list the phone list stored on the db

def list_phonelist(db)
    plist = db.execute("select * from phonelist")
    #puts plist.class
    #p plist
    puts "EMPLOYEE PHONE LIST:\n"
    puts "Number  Employee Name                  Phone Number"
    puts "------------------------------------------------------------"
    plist.each do |employee|
    	puts "#{employee['id'].to_s.ljust(2," ")}      #{employee['name'].ljust(25," ")}    #{employee['cellphone']}"
    end
end

def list_auditlog(db)
    plist = db.execute("select * from auditlog order by trandate")
    #puts plist.class
    #p plist
    puts "AUDIT LOG LISTING:\n"
    puts "------------------------------------------------------------"
    plist.each do |logline|
      puts "#{logline['trantype']} #{logline['trandate']} #{logline['befdata']} #{logline['afterdata']}"
    end
end

# Define method to update a phone for an employee

def update_phone(db, id, cellphone)
    befdata = ""
    dellist = db.execute("select * from phonelist where id = ?",[id]) 
    dellist.each do |log|
       befdata = log['name'] + " " + log['cellphone']
    end    
    auditlog(db,  "Update", befdata , cellphone)
    db.execute("UPDATE phonelist set cellphone = ? where id = ?", [cellphone,id])
end

# Method to get the phone from an employee and return false if not found

def get_phone(db, id)
	plist = db.execute("SELECT * from phonelist where id = ? ", [id])
	if plist.length == 0 then
       return false
    end 
	plist.each do |emp|
	    puts "Employee: #{emp['name'].ljust(35," ")} \nPhone Number: #{emp['cellphone']}"
	end
	return true
end

# Method to delete an empl.oyee p35ne from list

def del_phone(db, id)
    puts "Are you sure you want to delete this employee: (y/n)"
    sure = gets.chomp.upcase
    if sure =='Y' then
       befdata = ""
       dellist = db.execute("select * from phonelist where id = ?",[id]) 
       dellist.each do |log|
           befdata = log['name'] + " " + log['cellphone']
       end    
       auditlog(db,  "Delete", befdata ,nil)
       db.execute("delete from phonelist where id = ?", [id])
       puts "Record Deleted"
    end
end

def auditlog(db, trantype, befdata, afterdata)
    db.execute("INSERT into auditlog (trantype ,trandate, befdata ,afterdata) VALUES 
                                     (?,datetime('now'),?,?)",[trantype, befdata,afterdata])
end
# Initialize Table
#10.times do 
#   create_phonelist(db,  Faker::Name.name, Faker::PhoneNumber.phone_number)
#end

# Driver Code
selection = ""
while selection != "q" 
	

	puts "\n M E N U  O P T I O N S \n"
	puts " 1 - List the employee phones"
	puts " 2 - Insert new employee phone"
	puts " 3 - Update an employee phone"
	puts " 4 - Delete Employee from list"
	puts " q - Exit \n"
  puts "\n 5 - Auditlog Listing"

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
       list_phonelist(db)
       puts "Please provide employee number you want to update phone"
       id = gets.chomp.to_i
       if get_phone(db, id) then
          puts "New phone number is:"
          phone = gets.chomp
          update_phone(db, id, phone)
       end    
    elsif selection == "4"
       list_phonelist(db)
       puts "Please provide employee number to delete from phone list:"
       id = gets.chomp
       if get_phone(db, id) then
          del_phone(db, id)
       end   	  
    elsif selection == "5"
       list_auditlog(db)    
    end


end