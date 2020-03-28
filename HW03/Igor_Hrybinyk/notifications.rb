require 'singleton'
require 'pry'

class Notifications
  include Singleton

  def initialize(student_notifications = 0, mentor_notifications = 0)
    @student_notifications = student_notifications
    @mentor_notifications = mentor_notifications
  end

  def notify_student
    puts "Student notified"
    @student_notifications += 1
  end

  def student_notifications
    puts "You have #{@student_notifications} new notifications"
    @student_notifications -= 1
  end

  def notify_mentor
    puts "Mentor notified"
    @mentor_notifications += 1
  end

  def mentor_notifications
    puts "You have #{@student_notifications} new notifications"
    @mentor_notifications -= 1
  end

end
