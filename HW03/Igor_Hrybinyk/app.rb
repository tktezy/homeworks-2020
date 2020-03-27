require_relative 'mentor.rb'
require_relative 'student.rb'
require_relative 'notifications.rb'

mentor = Mentor.new('Jack', 'Gonsales')
mentor.create_homework

# module App
#  def self.run
#    student = Student.new(name: 'John', surname: 'Doe')
#    mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')

#    student.submit_homework!(homework_data)
#    student.homeworks # => [Homework, ...]

#    mentor.subscribe_to(student)
#    mentor.notifications # => []

#    student.submit_homework!(homework_data)
#    mentor.notifications # => [Notification, ...]

#    mentor.read_notifications!
#    mentor.notifications # => []
#  end
# end
