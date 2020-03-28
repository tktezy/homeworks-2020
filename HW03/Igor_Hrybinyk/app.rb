require_relative 'mentor.rb'
require_relative 'student.rb'
require_relative 'homework.rb'
require_relative 'notifications.rb'

# 1) Create mentor
mentor = Mentor.new('Jack Gonsales')
puts "#{mentor.name} (mentor):"

# 2) Mentor creates a homework
Homework.new(mentor).add_homework

# 3) Create student
student = Student.new('Ruby Hodson')

# 4) Mentor notify student about hw
Notifications.instance.notify_student

# 5) Student checks notifications
puts "#{student.name} (student):"
Notifications.instance.student_notifications

# 6) Student do smth with homework
read_hw = Homework.new(student)
read_hw.add_hw_solution
# 7) Mentor checks student notifications

# 8) Mentor write some review

# 9) Student get review about hw
