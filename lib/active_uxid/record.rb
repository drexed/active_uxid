module ActiveUxid
  module Record
    extend ActiveSupport::Concern

    included do
      before_create :callback_generate_uxid!, if: proc { respond_to?(:uxid) }
    end

    private

    def callback_generate_uxid!
      self.uxid = ActiveUxid::Generator.uxid
    end

  end
end
