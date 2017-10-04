require 'spec_helper'

describe ActiveUxid::Hash do
  let(:coder) { ActiveUxid::Hash.new }

  describe '#encode' do
    it 'to be "6jLK5q0"' do
      expect(ActiveUxid::Hash.encode(10)).to eq('6jLK5q0')
    end
  end

  describe '#decode' do
    it 'to be 10' do
      expect(ActiveUxid::Hash.decode('6jLK5q0')).to eq(10)
    end
  end

end
