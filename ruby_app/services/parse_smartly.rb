#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../classes/smart_parser'
require_relative '../classes/smart_log'

def parse_file(log_file)
  webserver_log = SmartLog.new(log_file)
  @parser = SmartParser.new(webserver_log)
end

def print_most_viewed(parser)
  puts '#### Page views ordered descending'
  parser.most_viewed.each { |route, visits| puts "#{route} #{visits} visits" }
end

def print_most_unique_viewed(parser)
  puts '#### Page unique views ordered descending'
  parser.most_unique_viewed.each { |route, visits| puts "#{route} #{visits} unique views" }
end

if ARGV[0].nil?
  puts 'A log file must be provided'
  return
end
parse_file(ARGV[0])
print_most_viewed(@parser)
print_most_unique_viewed(@parser)
