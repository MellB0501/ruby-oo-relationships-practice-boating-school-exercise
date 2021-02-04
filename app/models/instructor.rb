class Instructor
 attr_reader :name   
 ## * `Instructor.all` should return all instructors
 @@all = []
 
 ## * initialize with a name   
    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

#* `Instructor#passed_students` should return an array of students
# who passed a boating test with this specific instructor.
    def passed_students
        students passed boating_test instructor 
        BoatingTest.all.select do |student|
            student = 
        
    end
    binding.pry
end
