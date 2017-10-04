# frozen_string_literal: true

ActiveUxid::Settings.configure do |config|
  config.encoding_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  config.encoding_length = 26
  config.encoding_salt = 1369136
end
