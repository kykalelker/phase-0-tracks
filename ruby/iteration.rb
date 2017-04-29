
# Release 0
def print_name
name1 = "Anna"
name2 = "Kanan"
puts "Hello teammates"
yield [name1,name2]
end
print_name {|name1,name2| puts "Good teamwork, #{name1} and #{name2}!"}


student_name = ["Jim", "Jack", "Joe"]

student_marks = {
  Jim: 89, 
  Jack: 73,
  Joe: 79
}

#.EACH 
puts "Student names are"
p student_name
# Use .each on array
student_name.each {|student| puts student.swapcase}
#Print modified array
p student_name

puts "Student marks are:"
p student_marks
#Use .each on hash
student_marks.each {|student, marks| puts "#{student} has scored #{marks} marks in his test"}


#.MAP
puts "Student list:"
p student_name
#Initialize new array
student_caps =[]
#Use .map on array
student_caps = student_name.map {|student| student.upcase}
#Print new array to screen
p student_caps
p student_name

puts "Student marks list:"
p student_marks
#Initialize new hash
stud_performance = {}
#Use .map on hash
stud_performance = student_marks.map {|student, marks| [student.upcase, marks]}
#Print new hash to screen
p stud_performance

#.MAP!
puts "Student names are"
p student_name
#Use .map! on array
student_name.map! {|name1| name1.upcase}
#Print modified array to screen
p student_name


# Release 2
 
#Working with Array methods
# 1. Deleting numbers in an array that are less than 3.
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
p numbers.delete_if {|number| number < 3}

# 2. Keeping numbers in an array that are less than 3
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
p numbers.keep_if {|number| number < 3}

# 3. Keeping numbers in an array that are greater than 5
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
p numbers.take_while {|number| number > 5}

# 4. Deleting numbers in an array that are greater than 7
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
p numbers.reject {|number| number > 7}
#alternate method
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
p numbers.drop_while {|number| number < 7}

#Working with Hash methods
# 1. Deleting numbers in a hash that are greater than 3
alphanum = {a: 1, b: 2, c: 3, d: 4, e: 5}
p alphanum.delete_if {|alpha, num| num > 3}

# 2. Keeping numbers in a hash that are greater than 3
alphanum = {a: 1, b: 2, c: 3, d: 4, e: 5}
p alphanum.keep_if {|alpha, num| num > 3}

# 3. Keeping numbers in a hash that are greater than 5
alphanum = {a: 1, b: 2, c: 3, d: 4, e: 5}
p alphanum.select {|alpha, num| alpha > :d}

# 4. Deleting numbers in a hash that are greater than 7
alphanum = {a: 1, b: 2, c: 3, d: 4, e: 5}
p alphanum.reject {|alpha, num| alpha > :d}


