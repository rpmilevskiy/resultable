require 'spec_helper'

describe Resultable::Result do
  subject { Resultable::Result.new }

  it 'sets default error status' do
    expect(subject.status).to eq(Resultable::Result::Status::ERROR)
  end

  describe '#successful!' do
    before { subject.successful! }

    it 'sets successful status' do
      expect(subject.status).to eq(Resultable::Result::Status::SUCCESSFUL)
    end
  end

  describe '#successful?' do
    context 'if status is successful' do
      it 'returns true' do
        subject.status = Resultable::Result::Status::SUCCESSFUL
        expect(subject.successful?).to eq(true)
      end
    end

    context 'if status is error' do
      it 'returns false' do
        subject.status = Resultable::Result::Status::ERROR
        expect(subject.successful?).to eq(false)
      end
    end
  end

  describe '#error!' do
    before { subject.error! }

    it 'sets error status' do
      expect(subject.status).to eq(Resultable::Result::Status::ERROR)
    end
  end

  describe '#error?' do
    context 'if status is error' do
      it 'returns true' do
        subject.status = Resultable::Result::Status::ERROR
        expect(subject.error?).to eq(true)
      end
    end

    context 'if status is successful' do
      it 'returns false' do
        subject.status = Resultable::Result::Status::SUCCESSFUL
        expect(subject.error?).to eq(false)
      end
    end
  end

  describe '#response' do
    it 'allows to set response attribute' do
      subject.response = 'success'
      expect(subject.response).to eq('success')
    end
  end
end
