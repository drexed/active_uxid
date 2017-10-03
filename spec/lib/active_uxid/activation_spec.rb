require 'spec_helper'

describe ActiveUxid::Record do

  describe '#callback_generate_uxid!' do
    it 'to be not be nil' do
      user = User.create!

      expect(user.uxid).to_not eq(nil)
    end
  end

end
