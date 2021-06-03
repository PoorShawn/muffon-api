require 'rails_helper'

RSpec.describe API::V1::Deezer::SearchController, type: :controller do
  describe 'GET :artists' do
    it 'returns 200 if query present' do
      VCR.use_cassette 'controllers/api/v1/deezer/search/artists/success' do
        get :artists, params: { query: 'kate bush' }
      end

      expect(response).to have_http_status(:ok)
    end

    it 'returns 400 if no query' do
      get :artists

      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong query' do
      VCR.use_cassette 'controllers/api/v1/deezer/search/artists/wrong_query' do
        get :artists, params: { query: random }
      end

      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'GET :albums' do
    it 'returns 200 if query present' do
      VCR.use_cassette 'controllers/api/v1/deezer/search/albums/success' do
        get :albums, params: { query: 'kate bush' }
      end

      expect(response).to have_http_status(:ok)
    end

    it 'returns 400 if no query' do
      get :albums

      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong query' do
      VCR.use_cassette 'controllers/api/v1/deezer/search/albums/wrong_query' do
        get :albums, params: { query: random }
      end

      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'GET :tracks' do
    it 'returns 200 if query present' do
      VCR.use_cassette 'controllers/api/v1/deezer/search/tracks/success' do
        get :tracks, params: { query: 'kate bush' }
      end

      expect(response).to have_http_status(:ok)
    end

    it 'returns 400 if no query' do
      get :tracks

      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong query' do
      VCR.use_cassette 'controllers/api/v1/deezer/search/tracks/wrong_query' do
        get :tracks, params: { query: random }
      end

      expect(response).to have_http_status(:not_found)
    end
  end
end
