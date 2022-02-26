# frozen_string_literal: true

require 'spec_helper'
require_relative '../../ruby_app/classes/smart_parser'

RSpec.describe SmartParser do
  context 'with correct data' do
    let(:test_log) { instance_double('SmartLog', result: { 'home/1' => ['1.1.1.1', '1.1.1.2'], 'a/1' => ['1.1.2.2'] }) }
    let(:parser) { SmartParser.new(test_log) }

    it 'outputs page views ordered' do
      expect(parser.most_viewed).to eq([['home/1', 2], ['a/1', 1]])
    end

    it 'outputs most unique views ordered' do
      expect(parser.most_unique_viewed).to eq([['home/1', 2], ['a/1', 1]])
    end
  end

  context 'with incorrect data' do
    xit 'raises an exception' do
      # expect { parser.most_viewed }.to raise_error(SyntaxError)
    end
  end
end
