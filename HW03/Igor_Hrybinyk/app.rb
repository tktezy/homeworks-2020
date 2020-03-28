require_relative 'mentor.rb'
require_relative 'student.rb'
require_relative 'homework.rb'
require_relative 'notifications.rb'

# 1) Create mentor
mentor = Mentor.new('Jack')
puts "#{mentor.name} (mentor):"

# 2) Mentor creates a homework
Homework.new(mentor).add_homework

# 3) Create student
student = Student.new('Ruby')

# 4) Mentor notify student about hw
Notifications.instance.notify_student

# 5) Student checks notifications
puts "#{student.name} (student):"
Notifications.instance.student_notifications

# 6) Student do smth with homework
Homework.new(student).add_hw_solution
Notifications.instance.notify_mentor

# 7) Mentor checks student notifications
Notifications.instance.mentor_notifications

# 8) Mentor write some review

# 9) Student get review about hw
