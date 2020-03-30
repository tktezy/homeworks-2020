require_relative 'mentor.rb'
require_relative 'student.rb'
require_relative 'homework.rb'
require_relative 'notifications.rb'

def indent_line
  puts
end

# 1) Create mentor
mentor = Mentor.new('Jack')
puts "#{mentor.mentor_name} (mentor):"

# 2) Mentor creates a homework
puts 'Creating HW:'
mentor.create_homework
indent_line

# 3) Create student
student = Student.new('Ruby')
puts "#{student.student_name} (student):"

# 4) Student checks notifications
Notifications.instance.student_notifications

# 5) Student do smth with homework
puts 'Opening HW:'
student.do_homework
indent_line

# 6) Mentor checks student notifications
puts "#{mentor.mentor_name} (mentor):"
Notifications.instance.mentor_notifications

# 7) Mentor write some review
puts 'Writing review:'
mentor.write_review
