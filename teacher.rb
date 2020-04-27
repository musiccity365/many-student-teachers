require "pry"

class Teacher

    attr_reader :name

    @@all = []
    
    def initialize (name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def students
        tss = TeacherStudent.all.select do |ts|
            ts.teacher == self 
        end
        tss.map do |ts|
             ts.student 
        end
    end

    #method that returns student names of a specific teacher
    def student_names
        students.map { |student| student.name }
        # binding.pry
    end
    
    def grade_student(student, grade) # shannon.grade_student(michael, 92)
        tss = TeacherStudent.all.find do |ts|
            ts.student == student && ts.teacher == self
        end
        tss.grade = grade
    end

  
end