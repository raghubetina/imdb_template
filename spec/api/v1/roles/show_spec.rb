require 'rails_helper'

RSpec.describe "roles#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/roles/#{role.id}", params: params
  end

  describe 'basic fetch' do
    let!(:role) { create(:role) }

    it 'works' do
      expect(RoleResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('roles')
      expect(d.id).to eq(role.id)
    end
  end
end
