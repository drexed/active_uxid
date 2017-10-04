# frozen_string_literal: true

require 'spec_helper'

describe ActiveUxid::Ulid do
  let(:coder) { ActiveUxid::Ulid.new }

  describe '#encode' do
    it 'to be 26' do
      expect(ActiveUxid::Ulid.encode.length).to eq(26)
    end
  end

  describe '#uxid_encode' do
    it 'to be 26' do
      expect(coder.uxid_encode.length).to eq(26)
    end
  end

  describe '#uxid_bytes' do
    it 'to be 16' do
      expect(coder.uxid_bytes.length).to eq(16)
    end
  end

  describe '#uxid_octect' do
    it 'to be a random string' do
      expect(coder.uxid_octect).to_not eq(nil)
    end
  end

  describe '#uxid_unixtime_flex' do
    it 'to be a random integer' do
      expect(coder.uxid_unixtime_flex).to_not eq(nil)
    end
  end

  describe '#uxid_unixtime_48bit' do
    it 'to be 6' do
      expect(coder.uxid_unixtime_48bit.length).to eq(6)
    end
  end

end
