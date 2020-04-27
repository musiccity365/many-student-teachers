require_relative "./Student.rb"
require_relative "./Teacher.rb"
require_relative "./TeacherStudent.rb"

issa = Student.new("Issa")
injae = Student.new("Injae")
michael = Student.new("Michael")

paul = Teacher.new("Paul")
paul.name 
shannon = Teacher.new("Shannon")
chine = Teacher.new("Chine")


paulissa = TeacherStudent.new(paul, issa)
paulinjae = TeacherStudent.new(paul, injae)

shannonissa = TeacherStudent.new(shannon, issa)
shannonmichael = TeacherStudent.new(shannon, michael)


chineinjae = TeacherStudent.new(chine, injae)
chinemichael = TeacherStudent.new(chine, michael)

#print paul.students

# print injae.teachers

# puts shannon.grade_student(michael, 92)

p students.grade
binding.pry
0