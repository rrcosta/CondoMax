require 'rails_helper'

RSpec.describe OrganizationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Organization. As you add validations to Organization, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OrganizationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    xit "returns a success response" do
      Organization.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    xit "returns a success response" do
      organization = Organization.create! valid_attributes
      get :show, params: {id: organization.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    xit "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edxit" do
    xit "returns a success response" do
      organization = Organization.create! valid_attributes
      get :edxit, params: {id: organization.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "wxith valid params" do
      xit "creates a new Organization" do
        expect {
          post :create, params: {organization: valid_attributes}, session: valid_session
        }.to change(Organization, :count).by(1)
      end

      xit "redirects to the created organization" do
        post :create, params: {organization: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Organization.last)
      end
    end

    context "wxith invalid params" do
      xit "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {organization: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "wxith valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      xit "updates the requested organization" do
        organization = Organization.create! valid_attributes
        put :update, params: {id: organization.to_param, organization: new_attributes}, session: valid_session
        organization.reload
        skip("Add assertions for updated state")
      end

      xit "redirects to the organization" do
        organization = Organization.create! valid_attributes
        put :update, params: {id: organization.to_param, organization: valid_attributes}, session: valid_session
        expect(response).to redirect_to(organization)
      end
    end

    context "wxith invalid params" do
      xit "returns a success response (i.e. to display the 'edxit' template)" do
        organization = Organization.create! valid_attributes
        put :update, params: {id: organization.to_param, organization: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    xit "destroys the requested organization" do
      organization = Organization.create! valid_attributes
      expect {
        delete :destroy, params: {id: organization.to_param}, session: valid_session
      }.to change(Organization, :count).by(-1)
    end

    xit "redirects to the organizations list" do
      organization = Organization.create! valid_attributes
      delete :destroy, params: {id: organization.to_param}, session: valid_session
      expect(response).to redirect_to(organizations_url)
    end
  end

end
