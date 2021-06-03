require 'rails_helper'

RSpec.describe Spotify::Artist::Albums do
  subject { described_class }

  describe 'successful processing' do
    context 'when artist_id present' do
      let(:output) do
        VCR.use_cassette 'services/spotify/artist/albums/success' do
          subject.call(
            artist_id: '1aSxMhuvixZ8h9dK9jIDwL', limit: 5, page: 2
          )
        end
      end

      it { expect(output).to eq(Helpers::Spotify::Artist.albums_data) }
    end
  end

  describe 'no processing' do
    context 'when wrong artist_id' do
      let(:output) do
        VCR.use_cassette 'services/spotify/artist/albums/wrong_id' do
          subject.call(artist_id: random)
        end
      end

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end
  end
end
