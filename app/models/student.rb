class Student
attr_reader :student    
@@all = []   
    
### * should initialize with `first_name`
    def initialize name
        @name = name
        @@all << self 
    end

## * `Student.all` should return all of the student instances
    def self.all
        @@all
    end

### * `Student#add_boating_test` #
#should initialize a new boating test #
#with a Student (Object), 
#a boating test name (String), 
#a boating test status (String), 
#and an Instructor (Object).
    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status,instructor)
    end

### * `Student#all_instructors` 
#should return an array #
#of instructors 
#with whom this specific student 
#took a boating test.
    def boating_tests
        BoatingTest.all.select do |boating_test| 
            boating_test.student == self
        end
    end

# * `Student#all_instructors` should return an array of instructors 
#with whom this specific student took a boating test.
    def all_instructors
        boating_tests.map { |boating_test| boating_test.instructor}
    end

# * `Student.find_student` will take in a 
# first name and output the student (Object) with that name
    def find_student
        @name
    end

#* `Student#grade_percentage` should return the percentage of tests
# that the student has passed, 
# a Float (so if a student has passed 3 / 9 tests that they've taken,
# this method should return the Float `33.33`)
    def grade_percentage(students)
        BoatingTest.select {|student| student == "passed"}
    end
    binding.pry
end

