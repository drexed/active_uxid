# frozen_string_literal: true

require 'spec_helper'

describe ActiveUxid::Base do
  let(:coder) { ActiveUxid::Base.new }

  describe '.encoding_chars' do
    chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

    it "to be #{chars}" do
      expect(coder.encoding_chars).to eq(chars)
    end
  end

  describe '.encoding_length' do
    it 'to be 26' do
      expect(coder.encoding_length).to eq(26)
    end
  end

  describe '.encoding_salt' do
    it 'to be 1369136' do
      expect(coder.encoding_salt).to eq(1369136)
    end
  end

  describe '.encoding_base' do
    it 'to be 62' do
      expect(coder.encoding_base).to eq(62)
    end
  end

end
