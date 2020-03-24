require_relative 'logs_reader.rb'

logs_to_check = LogsReader.new(ARGV[0]).read_file
