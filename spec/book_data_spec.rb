require 'spec_helper'

include BookToolkit

describe BookData do
  it "is a BookData class" do
    expect(described_class).to equal(BookData)
  end

  it "should initial with hash data" do
    # let(:book) {}
  end
end
