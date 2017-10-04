# frozen_string_literal: true

require 'dry-configurable'

module ActiveUxid
  class Settings
    extend Dry::Configurable

    setting :encoder_type, 'ulid'
    setting :encoding_chars, '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    setting :encoding_length, 26
    setting :encoding_salt, 1369136

  end
end
