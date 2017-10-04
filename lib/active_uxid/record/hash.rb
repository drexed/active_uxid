# frozen_string_literal: true

module ActiveUxid
  module Record
    module Hash
      extend ActiveSupport::Concern

      included do
        after_create :callback_generate_uxid!, if: proc { respond_to?(:uxid) }

        def self.find_by_uxid(uxid)
          iden = ActiveUxid::Hash.decode(uxid)
          find(iden)
        end
      end

      def uxid_to_id
        return unless respond_to?(:uxid)
        ActiveUxid::Hash.decode(uxid)
      end

      private

      def callback_generate_uxid!
        hash = ActiveUxid::Hash.encode(id)
        update_column(:uxid, hash)
      end

    end
  end
end
