# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
=begin
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
=end
 
#Release 0
#1.
get '/contact/:address' do
  address = params[:address]
  "The address you entered is #{address}"
end

#2.
get '/great_job/' do
  name = params[:name]
  p params
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

#3 
get '/:number_1/plus/:number_2' do
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
  total = number_1 + number_2
  "#{params[:number_1]} plus #{params[:number_2]} is #{total}"
end



