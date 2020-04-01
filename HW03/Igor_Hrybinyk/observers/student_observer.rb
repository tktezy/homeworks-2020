module StudentObserver
  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def delete_student(student)
    @students.delete(student)
  end

  def notify_students(students)
    students.each(&:update_student)
    increase_notifications_count(students)
  end

  private

  def increase_notifications_count(students_collection)
    students_collection.each { |st| st.student_notify_count += 1 }
  end
end
