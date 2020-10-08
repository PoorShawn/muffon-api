require 'rails_helper'

RSpec.describe API::V1::TopController, type: :controller do
  describe 'GET :artists' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/top/artists/success' do
        get :artists
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET :tracks' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/top/tracks/success' do
        get :tracks
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET :tags' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/top/tags/success' do
        get :tags
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
