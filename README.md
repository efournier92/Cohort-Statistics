#Cohort Statistics

An exercise I completed to practice building an app with object-orientation in mind

The files contained in `models` comprise an object-oriented system to keep track of students in an educational environment

##Models

####`cohort`
* Initialized With:
  * title
  * start_date
  * end_date
  * students
  * system checks
* Instance Methods:
  * enroll
    * adds student to `students` array
  * assign
    * adds new system_check to `system_checks` array
  * roster
    * outputs all students in `students` array
  * system_check_completed?
    * checks if all students have completed a system check

####`lesson`
* Initialized With:
  * name
  * body

####`student`
* Initialized With:
  * name
  * email

####`system_check_submission`
* Initialized With:
  * solution
  * student
* Instance Methods:
  * assign_grade
    * assigns grade to correct student
  * graded?
    * checks whether or not submission has been graded

####`system_check`
* Initialized With:
  * name
  * due_date
  * submissions
* Instance Methods:
  * add_submission
    * adds submission to `submissions` array
  * average_grade
    * calculates average of all grades in `submissions` array
  * did_student_complete_system_check
    * checks whether or not student has submitted systems check
