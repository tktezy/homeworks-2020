module MentorObserver
  def initialize
    @mentors = []
  end

  def add_mentor(mentor)
    @mentors << mentor
  end

  def delete_mentor(mentor)
    @mentors.delete(mentor)
  end

  def notify_mentors
    mentors.each do |mentor|
      mentor.update_mentor
      mentor.mentor_notify_count += 1
    end
  end
end
