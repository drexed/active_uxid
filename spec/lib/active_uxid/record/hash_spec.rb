# frozen_string_literal: true

require 'spec_helper'

describe ActiveUxid::Record::Hash do
  let(:klass) { User.include(ActiveUxid::Record::Hash) }
  let(:user) { klass.create! }

  describe '.find_by_uxid' do
    it 'to be 1' do
      expect(klass.find_by_uxid(user.uxid).id).to eq(1)
    end
  end

  describe '.uxid_to_id' do
    it 'to be 1' do
      expect(user.uxid_to_id).to eq(1)
    end
  end

  describe '.callback_generate_uxid!' do
    it 'to be 8' do
      expect(user.uxid.length).to eq(8)
    end
  end

end
