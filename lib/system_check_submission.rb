# For Exceeds Expecations
class SystemCheckSubmission

  include Grade
  attr_reader :solution, :student, :grade

  def initialize(solution, student)
    @solution = solution
    @student  = student
  end

  def assign_grade(grade)
    if GRADES.include?(grade)
      @grade = grade
    else
      raise InvalidGradeError
    end
  end

  def graded?
    if @grade.nil?
      false
    else
      true
    end
  end
end

class InvalidGradeError < StandardError
end
