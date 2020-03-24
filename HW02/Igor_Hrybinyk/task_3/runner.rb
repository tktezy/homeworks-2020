require_relative 'logs_reader.rb'
require_relative 'lines_finder.rb'

logs_to_check = LogsReader.new(ARGV[0]).read_file
LinesFinder.new(logs_to_check).find_match_lines
