# frozen_string_literal: true

module ActiveUxid
  class Base

    ENCODING_CHARS ||= ActiveUxid.configuration.encoding_chars
    ENCODING_LENGTH ||= ActiveUxid.configuration.encoding_length
    ENCODING_SALT ||= ActiveUxid.configuration.encoding_salt

  end
end
