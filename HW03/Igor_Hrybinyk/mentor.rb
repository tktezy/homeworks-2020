require 'pry'

class Mentor
  attr_reader :mentor_name

  def initialize(mentor_name)
    @mentor_name = mentor_name
  end

  def create_homework
    Homework.add_homework(mentor_name)
    Notifications.instance.notify_student
  end

  def write_review
    Homework.add_review(mentor_name)
  end
end
