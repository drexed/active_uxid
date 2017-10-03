require 'spec_helper'

describe ActiveUxid::Ulid do
  let(:ulid) { ActiveUxid::Ulid.new }

  describe '#uxid' do
    it 'returns 26' do
      expect(ActiveUxid::Ulid.uxid.length).to eq(26)
    end
  end

  describe '#generate_uxid' do
    it 'returns 26' do
      expect(ulid.generate_uxid.length).to eq(26)
    end
  end

  describe '#uxid_bytes' do
    it 'returns 16' do
      expect(ulid.uxid_bytes.length).to eq(16)
    end
  end

  describe '#uxid_octect' do
    it 'returns random string' do
      expect(ulid.uxid_octect).to_not eq(nil)
    end
  end

  describe '#uxid_unixtime_flex' do
    it 'returns random integer' do
      expect(ulid.uxid_unixtime_flex).to_not eq(nil)
    end
  end

  describe '#uxid_unixtime_48bit' do
    it 'returns 6' do
      expect(ulid.uxid_unixtime_48bit.length).to eq(6)
    end
  end

end
