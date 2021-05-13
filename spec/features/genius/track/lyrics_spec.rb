require 'rails_helper'

RSpec.describe Genius::Track::Lyrics do
  subject { described_class }

  describe 'successful processing' do
    context 'when id present' do
      let(:output) do
        VCR.use_cassette 'genius/track/lyrics/success' do
          subject.call(track_id: 'Molly-nilsson-ugly-girl-lyrics')
        end
      end

      it { expect(output).to eq(Helpers::Genius::Track.lyrics_data) }
    end
  end

  describe 'no processing' do
    context 'when no id given' do
      let(:output) { subject.call }

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end

    context 'when wrong id' do
      let(:output) do
        VCR.use_cassette 'genius/track/lyrics/wrong_id' do
          subject.call(track_id: random)
        end
      end

      it { expect(output).to eq(Helpers::Base.not_found_error) }
    end
  end
end
