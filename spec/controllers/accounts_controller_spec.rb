require 'rails_helper'

RSpec.describe AccountsController, type: :controller do

  describe "GET #index" do
    it 'returns a sucess response' do
      get :index, params: {}

      expect(response).to be_successful
     end
  end

  describe "GET #show" do
    let(:account) { create(:account) }

    it 'returns a show response' do
      get :show, params: { id: account.to_param }

      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    let(:account) { create(:account) }

    it 'returns a new account' do
      get :new, params: { account: { name: 'foo'  } }

      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    let(:account) { create(:account) }

    it 'returns a new account with create' do
      expect{
        post :create, params: { account: { name: 'bar' } }
      }.to change(Account, :count).by(1)
    end

    it 'returns fall without name' do
      expect{
        post :create, params: { account: { name: nil } }
      }.not_to change(Account, :count)
    end
  end

end
