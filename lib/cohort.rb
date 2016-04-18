# For Exceeds Expecations
require_relative "student.rb"
class Cohort

  attr_reader :title, :start_date, :end_date, :students, :system_checks

  def initialize(title, start_date, end_date)
    @title         = title
    @start_date    = start_date
    @end_date      = end_date
    @students      = []
    @system_checks = []
  end

  def career_day
    @end_date + 4
  end

  def enroll(student)
    @students << student
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster = "Cohort: Bangorang\n-----------------\n"
    @students.each do |student|
      roster << "#{student.name} #{student.email}\n"
    end
    roster
  end

  def system_check_completed?(system_check)
    completed = true
    students_complete = []

    system_check.submissions.each do |submission|
      students_complete << submission.student
    end

    @students.each do |student|
      unless students_complete.include?(student)
        completed = false
        break
      end
    end
    completed
  end
  
end
