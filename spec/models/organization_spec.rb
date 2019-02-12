require 'rails_helper'

RSpec.describe Organization, type: :model do
  let(:organization) { create(:organization) }

  describe 'validations' do
    it 'is valid with fields fill' do
      expect(organization).to be_valid
    end

     it { is_expected.to validate_presence_of(:name) }
     it { is_expected.to validate_presence_of(:cnpj) }
  end
end
