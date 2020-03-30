require 'pry'
class Homework
  FILE_EXTENSION = '.txt'.freeze

  def self.add_homework(mentor_name)
    puts 'Enter homework name:'
    @filename = gets.chomp + " by #{mentor_name}" + FILE_EXTENSION
    puts 'Now, enter task description:'
    input_file_content
    puts "Homework '#{@filename}' successfully created!"
  end

  def self.add_hw_solution(student_name)
    open_file
    puts 'Add your solution:'
    @filename = @file_basename + " solution by #{student_name}" + FILE_EXTENSION
    input_file_content
    puts "Homework solution '#{@filename}' successfully created!"
  end

  def self.add_review(mentor_name)
    open_file
    puts 'Write review: '
    @filename = @file_basename + " review by #{mentor_name}" + FILE_EXTENSION
    input_file_content
    puts "Homework review '#{@filename}' successfully created!"
  end

  def self.open_file
    puts 'Which file do you need to open?'
    check_file_existence
    @file_basename = File.basename(@filename_input).gsub(/\sby.+/, '')
    File.open(@filename_input, 'r') do |file|
      puts "Description:\n#{file.read}"
    end
  end

  def self.input_file_content
    File.open(@filename, 'w+') do |file|
      file.write(gets.chomp)
    end
  end

  def self.check_file_existence
    loop do
      @filename_input = gets.chomp
      puts 'Wrong name, try again' unless File.exist?(@filename_input)
      break if File.exist?(@filename_input)
    end
  end
end
