require 'pry'
class Student

    attr_reader :name

    @@all = []
    
    def initialize (name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all
    end

    def teachers
       tss = TeacherStudent.all.select do |ts|
          ts.student == self
        end
        # binding.pry
        tss.map do |ts| 
            ts.teacher
        end
    end 
    
    def teacher_names
        teachers.map do |teacher|
            teacher.name
        end
    end

    def get_my_average_grade
        tss = TeacherStudent.all.select do |ts|
            ts.student == self 
        end
        tsg = tss.map do |ts|
            ts.grade
        end 
            numerator = tsg.sum
            denominator = tsg.count
            avg = numerator / denominator 
    end
end

    # create a mothod that allows a student to get average grades 


