require_relative 'lesson.rb'

class SystemCheck < Lesson
  attr_reader :submissions

  def initialize(name, due_date)
    @name        = name
    @due_date    = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum_scores         = 0.0
    submissions_graded = 0
    @submissions.each do |submission|
      unless submission.grade.nil?
        sum_scores += submission.grade
        submissions_graded += 1
      end
    end
    sum_scores / submissions_graded
  end

  def did_student_complete_system_check?(student)
    submitted = false
    @submissions.each do |submission|
      if submission.student.name == student.name
        submitted = true
      end
    end
    submitted
  end
end
