# frozen_string_literal: true

module ActiveUxid
  class Base

    ENCODING_BASE ||= ActiveUxid::Settings.config.encoding_chars.length
    ENCODING_CHARS ||= ActiveUxid::Settings.config.encoding_chars
    ENCODING_LENGTH ||= ActiveUxid::Settings.config.encoding_length
    ENCODING_SALT ||= ActiveUxid::Settings.config.encoding_salt

  end
end
