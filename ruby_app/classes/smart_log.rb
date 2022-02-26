# frozen_string_literal: true

# Basic class for managing a webserver.log file
class SmartLog
  attr_accessor :result

  def initialize(log_file)
    raise LoadError, 'Invalid file extension' if File.extname(log_file) != '.log'

    @result = {}
    File.readlines(log_file).each do |line|
      data = line.split(' ')
      @result[data[0]] = [] if @result[data[0]].nil?
      @result[data[0]] << data[1]
    end
  end
end
