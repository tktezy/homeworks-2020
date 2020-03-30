class Student
  attr_reader :student_name

  def initialize(student_name)
    @student_name = student_name
  end

  def do_homework
    Homework.add_hw_solution(student_name)
    Notifications.instance.notify_mentor
  end
end
