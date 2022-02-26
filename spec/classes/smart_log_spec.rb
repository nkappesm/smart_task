# frozen_string_literal: true

require 'spec_helper'
require_relative '../../ruby_app/classes/smart_log'

RSpec.describe SmartLog do
  context 'with correct file format' do
    let(:basic_log) { ['home/1 192.168.0.10'] }

    it 'reads file' do
      allow(File).to receive(:readlines).and_return(basic_log)
      expect(SmartLog.new('woof.log').result).to eq({ 'home/1' => ['192.168.0.10'] })
    end
  end

  context 'with wrong file format' do
    it 'raises an exception' do
      expect { SmartLog.new('wrong_format.mp4') }.to raise_error(LoadError)
    end
  end
end
