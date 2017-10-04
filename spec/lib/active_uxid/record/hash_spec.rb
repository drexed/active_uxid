require 'spec_helper'

describe ActiveUxid::Record::Hash do
  let(:klass) do
    class User < ActiveRecord::Base
      include ActiveUxid::Record::Hash
    end
  end
  let(:user) { klass.create! }

  describe '#uxid_to_id' do
    it 'to be 1' do
      expect(user.uxid_to_id).to eq(1)
    end
  end

  describe '#callback_generate_uxid!' do
    it 'to be 8' do
      expect(user.uxid.length).to eq(8)
    end
  end

end
