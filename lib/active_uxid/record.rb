module ActiveUxid
  module Record
    extend ActiveSupport::Concern

    included do
      before_create :callback_generate_uxid!, if: proc { respond_to?(:uxid) }
    end

    private

    def callback_generate_uxid!
      self.uxid = case ActiveUxid::Settings.config.encoder_type
                  when 'hash' then ActiveUxid::Hash.encode
                  when 'ulid' then ActiveUxid::Ulid.encode
                  end
    end

  end
end
