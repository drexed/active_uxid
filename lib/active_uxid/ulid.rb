module ActiveUxid
  class Ulid

    attr_reader :uxid

    def initialize
      @uxid = generate_uxid
    end

    def self.uxid
      klass = new
      klass.uxid
    end

    def generate_uxid
      (1..ActiveUxid::Settings.config.encoded_length).reduce('') do |str, num|
        shift = 128 - 5 * num
        str + ActiveUxid::Settings.config.encoding_chars[(uxid_octect >> shift) & 0x1f]
      end
    end

    def uxid_bytes
      "#{uxid_unixtime_48bit}#{SecureRandom.random_bytes(10)}"
    end

    def uxid_octect
      (hi, lo) = uxid_bytes.unpack('Q>Q>')
      (hi << 64) | lo
    end

    def uxid_unixtime_flex
      (Time.current.to_f * 10_000).to_i
    end

    def uxid_unixtime_48bit
      [uxid_unixtime_flex].pack('Q>')[2..-1]
    end

  end
end
