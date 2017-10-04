# frozen_string_literal: true

require 'spec_helper'

describe ActiveUxid::Configuration do
  after(:all) do
    ActiveUxid.configure do |config|
      config.encoding_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
      config.encoding_length = 26
      config.encoding_salt = 1369136
    end
  end

  describe '#configure' do
    it 'to be "91 test" for encoding_chars' do
      ActiveUxid.configuration.encoding_chars = '91 test'

      expect(ActiveUxid.configuration.encoding_chars).to eq('91 test')
    end

    it 'to be "19 test" for encoding_length' do
      ActiveUxid.configuration.encoding_length = '19 test'

      expect(ActiveUxid.configuration.encoding_length).to eq('19 test')
    end

    it 'to be "19 test" for encoding_salt' do
      ActiveUxid.configuration.encoding_salt = '19 test'

      expect(ActiveUxid.configuration.encoding_salt).to eq('19 test')
    end
  end

end
