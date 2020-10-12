require 'rails_helper'

RSpec.describe LastFM::Search::Tracks do
  subject { described_class }

  describe 'successful processing' do
    context 'when track exists' do
      let(:output) do
        VCR.use_cassette 'lastfm/search/tracks/success' do
          subject.call(track: 'chinatown', limit: 5)
        end
      end

      it { expect(output).to eq(Helpers::LastFM.search_tracks_data) }
    end
  end

  describe 'no processing' do
    context 'when no track title given' do
      let(:output) { subject.call }

      it { expect(output).to eq(Helpers::LastFM.bad_request_error) }
    end

    context 'when wrong track title' do
      let(:output) do
        VCR.use_cassette 'lastfm/search/tracks/wrong_title' do
          subject.call(track: Helpers::LastFM::RANDOM_STRING)
        end
      end

      it { expect(output).to eq(Helpers::LastFM.not_found_error) }
    end
  end
end
