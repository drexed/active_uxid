ActiveUxid::Settings.configure do |config|
  config.encoder_type = 'ulid'
  config.encoding_chars = '0123456789abcdefghjkmnpqrstvwxyz'
  config.encoded_length = 26
end
