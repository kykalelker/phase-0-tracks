# require gems
require 'SQLite3'

# create SQLite3 database
todo = SQLite3::Database.new("chores.db")

# create chore and responsibility tables
create_chore_table = <<-SQL
  CREATE TABLE IF NOT EXISTS chores(
    id INTEGER PRIMARY KEY,
    task VARCHAR (255),
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

def add_chores(todo, jobs_to_do, minutes, person_num)
  todo.execute("INSERT INTO chores (task, time_taken, respons_id) VALUES (?,?,?)", [jobs_to_do, minutes, person_num])
end

# driver code

# retrieve data
chores = todo.execute("SELECT chores.task, chores.time_taken, responsibility.name FROM chores JOIN responsibility ON chores.respons_id = responsibility.id")
p chores