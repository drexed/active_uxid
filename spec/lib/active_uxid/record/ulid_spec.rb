# frozen_string_literal: true

require 'spec_helper'

describe ActiveUxid::Record::Ulid do
  let(:klass) { User.include(ActiveUxid::Record::Ulid) }
  let(:user) { klass.create! }

  describe '.callback_generate_uxid!' do
    it 'to be 26' do
      expect(user.uxid.length).to eq(26)
    end
  end

end
