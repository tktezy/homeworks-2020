class Homework
  FILE_EXTENSION = '.txt'.freeze
  def initialize(mentor)
    @name = mentor.name
  end

  def add_homework
    process_user_input
    filename = @filename_input + " by #{@name}" + FILE_EXTENSION
    File.open(filename, 'w+') do |f|
      f.write(@description_input)
    end
    puts "Homework '#{filename}' successfully created!"
  end

  private

  def process_user_input
    puts 'Pls, enter filename:'
    @filename_input = gets.chomp
    puts 'Now, enter task description:'
    @description_input = gets.chomp
  end
end
