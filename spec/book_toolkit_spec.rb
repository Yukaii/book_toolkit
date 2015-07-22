require 'spec_helper'

describe BookToolkit do
  let(:isbn13) { "9780387290959" }
  let(:invalid_isbn13) { "9780387290951" }
  let(:isbn10) { "0387290958" }
  let(:invalid_isbn10) { "0387290951" }

  it 'should convert to valid isbn 13' do

    expect(ISBN.valid?(isbn13)).to eq(true)
    expect(ISBN.valid?(isbn10)).to eq(true)
    expect(ISBN.valid?(invalid_isbn13)).to eq(false)
    expect(ISBN.valid?(invalid_isbn10)).to eq(false)

    expect(ISBN.valid? BookToolkit.to_isbn13(invalid_isbn13)).to eq(true)
    expect(ISBN.valid? BookToolkit.to_isbn13(invalid_isbn10)).to eq(true)
  end
end
