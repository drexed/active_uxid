# frozen_string_literal: true

module ActiveUxid
  class Base

    def initialize
      @config = ActiveUxid.configuration
    end

    %w[encoding_chars encoding_length encoding_salt].each do |setting|
      define_method(setting) { @config.send(setting) }
    end

    def encoding_base
      encoding_chars.length
    end

  end
end
