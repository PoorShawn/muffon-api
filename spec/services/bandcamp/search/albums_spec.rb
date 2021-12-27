RSpec.describe Bandcamp::Search::Albums do
  subject { described_class }

  describe 'successful processing' do
    context 'when query present' do
      let(:output) do
        VCR.use_cassette 'services/bandcamp/search/albums/success' do
          subject.call(query: 'wild nothing', page: 2, profile_id: 1)
        end
      end

      it { expect(output).to eq(Helpers::Bandcamp::Search.albums_data) }
    end
  end

  describe 'no processing' do
    context 'when no query given' do
      let(:output) { subject.call }

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end

    context 'when wrong query' do
      let(:output) do
        VCR.use_cassette 'services/bandcamp/search/albums/wrong_query' do
          subject.call(query: random)
        end
      end

      it { expect(output).to eq(Helpers::Base.not_found_error) }
    end
  end
end
