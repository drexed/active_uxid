require 'base64'

module ActiveUxid
  class Hash < ActiveUxid::Base

    def initialize(id)
    end

    def self.encode(id)
      klass = new(id)
      klass.encode_uxid(id)
    end

    def self.decode(id)
      klass = new(id)
      klass.decode_uxid(id)
    end

    def encode_uxid(id)
      uxid_encode_chars((id + ENCODING_SALT) << 18)
    end

    def decode_uxid(id)
      (uxid_decode_chars(id) >> 18) - ENCODING_SALT
    end

    def uxid_encode_chars(id)
      return ENCODING_CHARS[0] if id.zero?
      str = ''

      while id > 0
        str << ENCODING_CHARS[id.modulo(ENCODING_BASE)]
        id /= ENCODING_BASE
      end

      str.reverse
    end

    def uxid_decode_chars(str)
      id = 0

      str.each_char { |char| id = id * ENCODING_BASE + ENCODING_CHARS.index(char) }

      id
    end

  end
end
