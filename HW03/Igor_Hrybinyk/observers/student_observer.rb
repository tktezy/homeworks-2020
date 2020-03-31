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

  def notify_students(student = @students)
    if student == @students
      increase_notify_count && students.each(&:update_student)
    else
      students.select do |st|
        if st.student_name == student
          increase_notify_count(student) && st.update_student
        end
      end
    end
  end

  private

  def increase_notify_count(student = @students)
    if student == @students
      students.each do |st|
        st.student_notify_count += 1
      end
    else
      students.select do |st|
        st.student_notify_count += 1 if st.student_name == student
      end
    end
  end
end
