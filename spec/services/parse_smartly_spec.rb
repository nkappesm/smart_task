# frozen_string_literal: true

require 'spec_helper'
require_relative '../../ruby_app/services/parse_smartly'

RSpec.describe 'ParseSmartly' do
  context 'with webserver log' do
    let(:test_log) { instance_double('SmartLog', result: { 'home/1' => ['1.1.1.1', '1.1.1.2'], 'a/1' => ['1.1.2.2'] }) }
    let(:parser) { SmartParser.new(test_log) }

    it 'should parse file' do
      allow(SmartLog).to receive(:new).and_return(instance_double('SmartLog'))
      expect(parse_file('test.log')).to be_a(SmartParser)
    end

    it 'should return page views ordered descending' do
      output = "#### Page views ordered descending\nhome/1 2 visits\na/1 1 visits\n"
      expect { print_most_viewed(parser) }.to output(output).to_stdout
    end

    it 'should return unique page views ordered descending' do
      output = "#### Page unique views ordered descending\nhome/1 2 unique views\na/1 1 unique views\n"
      expect { print_most_unique_viewed(parser) }.to output(output).to_stdout
    end
  end
end
