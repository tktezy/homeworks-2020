class Student
  include MentorObserver
  attr_reader :student_name
  attr_accessor :mentors, :student_notify_count

  def initialize(student_name, student_notify_count = 0)
    super()
    @student_name = student_name
    @student_notify_count = student_notify_count
  end

  def do_homework(hw_filename, solution)
    Homework.add_hw_solution(student_name, hw_filename, solution)

    @student_notify_count -= 1
    notify_mentors
  end

  def update_student
    puts "Student #{student_name} notified!"
  end

  def check_notifications
    puts "#{student_name}, you have #{student_notify_count} notifications!"
  end
end
