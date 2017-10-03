require 'dry-configurable'

module ActiveUxid
  class Settings
    extend Dry::Configurable

    setting :encoder_type, 'ulid'
    setting :encoding_chars, '0123456789abcdefghjkmnpqrstvwxyz'
    setting :encoded_length, 26

  end
end
