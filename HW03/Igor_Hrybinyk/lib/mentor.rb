class Mentor
  include StudentObserver
  attr_reader :mentor_name
  attr_accessor :students, :mentor_notify_count

  def initialize(mentor_name, mentor_notify_count = 0)
    super()
    @mentor_name = mentor_name
    @mentor_notify_count = mentor_notify_count
  end

  def create_homework(hw_filename, task)
    Homework.add_homework(mentor_name, hw_filename, task)
    notify_students(students)
  end

  def write_review(student, hw_filename, review)
    Homework.add_review(hw_filename, review)

    @mentor_notify_count -= 1
    notify_students([student])
  end

  def create_hw_directory
    Dir.mkdir('homeworks') unless Dir.exist?('homeworks')
  end

  def check_notifications
    puts "#{mentor_name}, you have #{@mentor_notify_count} notifications!"
  end

  def update_mentor
    puts "Mentor #{mentor_name} notified!"
  end
end
