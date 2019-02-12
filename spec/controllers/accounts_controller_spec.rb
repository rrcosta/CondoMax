require 'rails_helper'

RSpec.describe AccountsController, type: :controller do
  let(:account) { create(:account) }

  describe "GET #index" do
    it 'returns a sucess response' do
      get :index, params: {}

      expect(response).to be_successful
     end
  end

  describe "GET #show" do

    it 'returns a show response' do
      get :show, params: { id: account.to_param }

      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it 'returns a new account' do
      get :new, params: { account: { name: 'foo' } }

      expect(response).to be_successful
    end
  end

  describe "POST #create" do
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

  describe 'PUT #update' do
    let(:account2) { create(:account, name: 'Braz Cubas') }
    let(:params) { { name: "foo" }}

    it 'updates name field' do
      expect{
        put :update, params: { id: account2.id, account: params }
      }.not_to change(account2, :name)
    end

    it 'updates name field' do
      expect{
        put :update, format: :json, params: { id: account2.id, account: params }
      }.not_to change(account2, :name)
    end
  end

  describe 'DELETE /destroy' do
    let!(:account2) { create(:account)  }

    it 'delete the account' do
      expect {
        delete :destroy, params: { id: account2.id }
      }.to change(Account, :count)
    end
  end

end
