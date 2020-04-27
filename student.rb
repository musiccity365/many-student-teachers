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
        tss.map do |ts| 
            ts.teacher
        end
      
    end 
    

end
