# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end    

    attr_accessor :name, :roster

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end    
        @roster[grade] << student
    end    

    def grade(gr)
        @roster[gr]
    end    

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort
        end   
        sorted
    end    


end    