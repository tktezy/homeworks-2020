class Student
  include MentorObserver
  attr_reader :name
  attr_accessor :mentors, :student_notify_count

  def initialize(name, student_notify_count = 0)
    super()
    @name = name
    @student_notify_count = student_notify_count
  end

  def do_homework(hw_filename, solution)
    Homework.add_hw_solution(name, hw_filename, solution)

    @student_notify_count -= 1
    notify_mentors
  end

  def update_student
    puts "Student #{name} notified!"
  end

  def check_notifications
    puts "#{name}, you have #{student_notify_count} notifications!"
  end
end
