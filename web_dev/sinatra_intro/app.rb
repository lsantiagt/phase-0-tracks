# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a get route that displays an address
get '/contact' do
  "120 Ave Condado Suite 102 San Juan, PR"
end

#route that can take a person's name as a query parameter
get '/good_job/' do
  name = params[:name]
  if name 
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# a route that takes two numbers and responds with the result
get '/:first_num/plus/:second_num' do
  "= " " #{params[:first_num].to_i + params[:second_num].to_i}"
end

#Make a route that allows the user to search the database
get '/:name' do
  students = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])
  response = ""
  students.each do |student|
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end