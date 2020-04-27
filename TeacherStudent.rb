class TeacherStudent

    attr_accessor :teacher, :student, :grade
    
    @@all = []
    @@hash = {}

    def initialize (teacher, student)
        @teacher = teacher
        @student = student
        @grade = nil
        @@all << self
    end

    def self.all
        @@all
    end

    # def teachers
    #     Teacher.all.select { |teacher_list| teacher_list.teacher == self }
    # end

    # def students
    #     Student.all.select { |student_roster| student_roster.student == self }
    # end

    
end
