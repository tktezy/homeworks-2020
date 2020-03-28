require_relative 'mentor.rb'
require_relative 'student.rb'
require_relative 'homework.rb'
require_relative 'notifications.rb'

 # 1) Create mentor
mentor = Mentor.new('Jack')
puts "#{mentor.name} (mentor):"

 # 2) Mentor creates a homework
puts 'Creating HW:'
Homework.new(mentor).add_homework

 # 3) Create student
student = Student.new('Ruby')

 # 4) Mentor notify student about hw
Notifications.instance.notify_student
puts

 # 5) Student checks notifications
puts "#{student.name} (student):"
Notifications.instance.student_notifications

 # 6) Student do smth with homework
puts 'Opening HW:'
Homework.new(student).add_hw_solution
Notifications.instance.notify_mentor
puts

 # 7) Mentor checks student notifications
puts "#{mentor.name} (mentor):"
Notifications.instance.mentor_notifications

 # 8) Mentor write some review
puts 'Writing review:'
Homework.new(mentor).add_review
