

# Release 0
def print_name
name1 = "Anna"
name2 = "Kanan"
puts "Hello teammates"
yield [name1,name2]
end
print_name {|name1,name2| puts "Good teamwork, #{name1} and #{name2}!"}

=begin
# Release 1
#Create an array and a hash
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
stand_caps = student_name.map {|student| student.upcase}
#Print new array to screen
p student_caps
p student_name

puts "Student marks list:"
p student_marks
#Initialize new hash
stud_performance = {}
#Use .map on hash
stud_performance = student_marks.map {|student, marks| [student, marks.upcase]}
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

# 1. Deleting numbers in an array that are less than 3.
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.delete_if {|number| number < 3}

# 2. 
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.keep_if {|number| number < 3}

# 3.
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.keep_if {|number| number < 10 && number > 6}

# 4.
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.reject {|number| number < 7}

# 1. (Hash)
student_marks = {
  Jim: 89, 
  Jack: 73,
  Joe: 79
}
student_marks.flatten {|name, marks|}

# 2. (Hash)
=end