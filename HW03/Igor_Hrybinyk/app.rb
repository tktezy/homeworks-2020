require_relative 'observers/student_observer.rb'
require_relative 'observers/mentor_observer.rb'
require_relative 'lib/mentor.rb'
require_relative 'lib/student.rb'
require_relative 'lib/homework.rb'
require_relative 'lib/notifications.rb'

def indent_line
  puts
end

mentor = Mentor.new('Jojo')
st1 = Student.new('Star')
st2 = Student.new('Platinum')

# 1) Mentor and student add each other as observers
mentor.add_student(st1)
mentor.add_student(st2)

st1.add_mentor(mentor)
st2.add_mentor(mentor)

# 2) Mentor create homework
mentor.create_hw_directory
mentor.create_homework('hw1', 'task 1')
indent_line

# 3) Students check notifications
st1.check_notifications
st2.check_notifications
indent_line

# 4) Student do smth with homework
puts 'Opening HW:'
st1.do_homework('hw1 by Jojo', 'solution')
st2.do_homework('hw1 by Jojo', 'solution')
indent_line

st1.check_notifications
st2.check_notifications
indent_line

# 5) Mentor check notifications
mentor.check_notifications
indent_line

# 6) Mentor write some review
puts 'Writing review:'
mentor.write_review('Star', 'hw1 by Jojo solution by Star', 'review')
mentor.write_review('Platinum', 'hw1 by Jojo solution by Platinum', 'reiew')
indent_line

st1.check_notifications
st2.check_notifications
