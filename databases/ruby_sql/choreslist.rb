# require gems
require 'SQLite3'

# create SQLite3 database
todo = SQLite3::Database.new("chores.db")

# create chore and responsibility tables
create_chore_table = <<-SQL
  CREATE TABLE IF NOT EXISTS chores(
    id INTEGER PRIMARY KEY,
    task VARCHAR (255),
    status_done BOOLEAN,
    time_taken INTEGER,
    respons_id INT,
    FOREIGN KEY (respons_id) REFERENCES responsibility(id)
  )
  SQL

create_responsibility_table = <<-SQL
  CREATE TABLE IF NOT EXISTS responsibility(
    id INTEGER PRIMARY KEY,
    name VARCHAR (255)
  )
  SQL

todo.execute(create_responsibility_table)
todo.execute(create_chore_table)

# populate responsibility and chore tables
def add_respons(todo, temp)
  todo.execute("INSERT INTO responsibility (name) VALUES (?)", [temp])
end

def add_chores(todo, jobs_to_do, task_status, minutes, person_num)
  todo.execute("INSERT INTO chores (task, status_done, time_taken, respons_id) VALUES (?,?,?,?)", [jobs_to_do, task_status, minutes, person_num])
end

# driver code to populate tables
puts "How many chores would you like to assign?"
num_of_chores = gets.chomp.to_i
person = []
num_of_chores.times do
  puts "What chore do you want completed?"
  jobs_to_do = gets.chomp
  puts "Is the task complete? (true/false)"
  task_status = gets.chomp
  puts "How many minutes does the chore take to complete?"
  minutes = gets.chomp.to_i
  puts "Whose responsibility is it to complete this task?"
  temp = gets.chomp
  if !person.include?(temp)
    person << temp
    add_respons(todo, temp)
  end
  person_num = person.index(temp) + 1
  add_chores(todo, jobs_to_do, task_status, minutes, person_num)
end

# retrieve data after creation
chores = todo.execute("SELECT chores.task, chores.status_done, chores.time_taken, responsibility.name FROM chores JOIN responsibility ON chores.respons_id = responsibility.id")
p chores

## modify chore table
#def mod_chores(todo, chore_key, key, value)
#  todo.execute("UPDATE chores SET #{key} = #{value} WHERE task=#{chore_key}")
#end
#
## driver code to update/modify tables
#puts "Would you like to modify your choreslist? (y/n)"
#if gets.chomp == "y"
#  puts "Which chore would you like to update for?"
#  chore_key = gets.chomp
#  if !(chore_key=="none")
#    puts "What would you like to update? (chore/status/minutes/responsibility)"
#    key = gets.chomp
#    puts "what would you like to change #{key} to?"
#    value = gets.chomp
#    if key == "chore" 
#      key = "task"
#    elsif key == "status" 
#      key = "status_done"
#    elsif key == "minutes"
#      key = "time_taken"
#    elsif key == "responsibility"
#      key = "respons_id"
#    end
#    mod_chores(todo, chore_key, key, value)
#  else puts "okay, thank you"
#  end
#end
#
## retrieve data after updation
#chores = todo.execute("SELECT chores.task, chores.status_done, chores.time_taken, responsibility.name FROM chores JOIN responsibility ON chores.respons_id = responsibility.id")
#p chores