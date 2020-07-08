# frozen_string_literal: true

require 'rails_helper'

RSpec.describe VitalSignsGateway do
  describe '.life_expectancy' do
    subject { described_class.life_expectancy }

    let(:response) { instance_double('response', body: '{}') }

    before do
      allow(HTTParty).to receive(:get).and_return(response)
    end

    it 'calls http service' do
      subject
      expect(HTTParty).to have_received(:get)
    end

    it 'returns hash' do
      expect(subject).to be_a(Hash)
    end
  end
end
