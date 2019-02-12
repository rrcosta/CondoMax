require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'validation' do
    let(:account) { create(:account) }

    it 'is valid with name' do
      expect(account.name).not_to eql(nil)
    end

    it 'is invalid without name field' do
      account.name = nil
      expect(account).not_to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
  end
end
