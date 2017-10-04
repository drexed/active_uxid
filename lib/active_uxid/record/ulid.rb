# frozen_string_literal: true

module ActiveUxid
  module Record
    module Ulid
      extend ActiveSupport::Concern

      included do
        before_create :callback_generate_uxid!, if: proc { respond_to?(:uxid) }
      end

      private

      def callback_generate_uxid!
        self.uxid = ActiveUxid::Ulid.encode
      end

    end
  end
end
