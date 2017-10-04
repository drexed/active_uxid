# frozen_string_literal: true

module ActiveUxid
  class Configuration

    attr_accessor :encoding_chars, :encoding_length, :encoding_salt

    def initialize
      @encoding_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
      @encoding_length = 26
      @encoding_salt = 1369136
    end

  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield(configuration)
  end

end
