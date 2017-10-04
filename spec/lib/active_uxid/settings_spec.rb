# frozen_string_literal: true

require 'spec_helper'

describe ActiveUxid::Settings do

  after(:all) do
    ActiveUxid::Settings.configure do |config|
      config.encoder_type = 'ulid'
      config.encoding_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
      config.encoding_length = 26
      config.encoding_salt = 1369136
    end
  end

  describe '#configure' do
    it 'to be "91 test"' do
      ActiveUxid::Settings.configure do |config|
        config.encoder_type = '91 test'
      end

      expect(ActiveUxid::Settings.config.encoder_type).to eq('91 test')
    end

    it 'to be "91 test"' do
      ActiveUxid::Settings.configure do |config|
        config.encoding_chars = '91 test'
      end

      expect(ActiveUxid::Settings.config.encoding_chars).to eq('91 test')
    end

    it 'to be "19 test"' do
      ActiveUxid::Settings.configure do |config|
        config.encoding_length = '19 test'
      end

      expect(ActiveUxid::Settings.config.encoding_length).to eq('19 test')
    end

    it 'to be "19 test"' do
      ActiveUxid::Settings.configure do |config|
        config.encoding_salt = '19 test'
      end

      expect(ActiveUxid::Settings.config.encoding_salt).to eq('19 test')
    end
  end

end
