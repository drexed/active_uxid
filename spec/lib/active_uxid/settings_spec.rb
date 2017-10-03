require 'spec_helper'

describe ActiveUxid::Settings do

  after(:all) do
    ActiveUxid::Settings.configure do |config|
      config.encoder_type = 'ulid'
      config.encoding_chars = '0123456789abcdefghjkmnpqrstvwxyz'
      config.encoded_length = 26
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
        config.encoded_length = '19 test'
      end

      expect(ActiveUxid::Settings.config.encoded_length).to eq('19 test')
    end
  end

end
