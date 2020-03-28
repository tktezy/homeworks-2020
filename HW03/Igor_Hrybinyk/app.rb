require_relative 'mentor.rb'
require_relative 'student.rb'
require_relative 'homework.rb'
require_relative 'notifications.rb'

# 1) Create mentor
mentor = Mentor.new('Jack Gonsales')
# 2) Mentor creates a homework
Homework.new(mentor).add_homework
# 3) Create student
# 4) Mentor notify student about hw
# 5) Student checks notifications
# 6) Student do smth with homework
# 7) Mentor checks student notifications
# 8) Mentor write some review
# 9) Student get review about hw
