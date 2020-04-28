require_relative "./Student.rb"
require_relative "./Teacher.rb"
require_relative "./TeacherStudent.rb"

issa = Student.new("Issa")
injae = Student.new("Injae")
michael = Student.new("Michael")

paul = Teacher.new("Paul")
shannon = Teacher.new("Shannon")
chine = Teacher.new("Chine")


paulissa = TeacherStudent.new(paul, issa)
paulinjae = TeacherStudent.new(paul, injae)

shannonissa = TeacherStudent.new(shannon, issa)
shannonmichael = TeacherStudent.new(shannon, michael)

chineinjae = TeacherStudent.new(chine, injae)
chinemichael = TeacherStudent.new(chine, michael)


paul.grade_student(issa, 90)
shannon.grade_student(issa,70)

paul.grade_student(injae, 80)
chine.grade_student(injae,60)

shannon.grade_student(michael, 70)
chine.grade_student(michael, 50)

puts issa.get_my_average_grade
# puts injae.get_my_average_grade
# puts michael.get_my_average_grade


