require 'pry'
class Homework
  FILE_EXTENSION = '.txt'.freeze
  def initialize(mentor)
    @name = mentor.name
  end

  def add_homework
    process_user_input
    filename = @filename_input + " by #{@name}" + FILE_EXTENSION
    File.open(filename, 'w+') do |file|
      file.write(@description_input)
    end
    puts "Homework '#{filename}' successfully created!"
  end

  def add_hw_solution
    open_hw
    puts 'Add your solution:'
    solution = gets.chomp
    filename = @file_basename + " solution by #{@name}" + FILE_EXTENSION
    File.open(filename, 'w+') do |file|
      file.write(solution)
    end
    puts "Homework solution '#{filename}' successfully created!"
  end

  private

  def process_user_input
    puts 'Pls, enter filename:'
    @filename_input = gets.chomp
    puts 'Now, enter task description:'
    @description_input = gets.chomp
  end

  def open_hw
    puts 'Which HW do you need to open?'
    @filename_input = gets.chomp
    @file_basename = File.basename(@filename_input).gsub(/\sby\s.+\.txt/, '')
    File.open(@filename_input, 'r') do |file|
      puts "HW description:\n#{file.read}"
    end
  end
end
