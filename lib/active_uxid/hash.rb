module ActiveUxid
  class Hash

    attr_reader :uxid

    def initialize
      @uxid = generate_uxid
    end

    def self.uxid
      klass = new
      klass.uxid
    end

    def generate_uxid
      # TODO
    end

  end
end
