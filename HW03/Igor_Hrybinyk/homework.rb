require 'pry'
class Homework
  FILE_EXTENSION = '.txt'.freeze
  def initialize(mentor)
    @name = mentor.name
  end

  def add_homework
    puts 'Enter homework name:'
    @filename = gets.chomp + " by #{@name}" + FILE_EXTENSION
    puts 'Now, enter task description:'
    file_description
    puts "Homework '#{@filename}' successfully created!"
  end

  def add_hw_solution
    open_file
    puts 'Add your solution:'
    @filename = @file_basename + " solution by #{@name}" + FILE_EXTENSION
    file_description
    puts "Homework solution '#{@filename}' successfully created!"
  end

  def add_review
    open_file
    puts 'Wrote review: '
    @filename = @file_basename + " review by #{@name}" + FILE_EXTENSION
    file_description
    puts "Homework review '#{@filename}' successfully created!"
  end

  private

  def open_file
    puts 'Which file do you need to open?'
    @filename_input = gets.chomp
    @file_basename = File.basename(@filename_input).gsub(/\sby.+/, '')
    File.open(@filename_input, 'r') do |file|
      puts "Description:\n#{file.read}"
    end
  end

  def file_description
    File.open(@filename, 'w+') do |file|
      file.write(gets.chomp)
    end
  end
end
