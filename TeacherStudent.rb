class TeacherStudent

    attr_accessor :teacher, :student, :grade
    
    @@all = []

    def initialize (teacher, student)
        @teacher = teacher
        @student = student
        @grade = nil
        @@all << self
    end

    def self.all
        @@all
    end

end
