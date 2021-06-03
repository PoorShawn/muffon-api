require 'rails_helper'

RSpec.describe Odnoklassniki::Artist::Albums do
  subject { described_class }

  describe 'successful processing' do
    context 'when artist_id present' do
      let(:output) do
        VCR.use_cassette 'services/odnoklassniki/artist/albums/success' do
          subject.call(
            artist_id: '122882931409564', limit: 5, page: 2
          )
        end
      end

      it { expect(output).to eq(Helpers::Odnoklassniki::Artist.albums_data) }
    end
  end

  describe 'no processing' do
    context 'when no artist_id given' do
      let(:output) { subject.call }

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end

    context 'when wrong artist_id' do
      let(:output) do
        VCR.use_cassette 'services/odnoklassniki/artist/albums/wrong_id' do
          subject.call(artist_id: random)
        end
      end

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end
  end
end
