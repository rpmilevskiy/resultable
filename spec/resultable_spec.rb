require 'spec_helper'

describe Resultable do
  class Service
    include Resultable
  end

  subject { Service.new }

  it 'adds result attribute' do
    expect(subject.result).to_not be_nil
  end

  it 'initializes result attribute' do
    expect(subject.result.class).to eq(Resultable::Result)
  end
end
