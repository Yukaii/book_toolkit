require "book_toolkit/version"

# gem for isbn converting
require 'isbn'

require 'book_toolkit/book_data'
require 'book_toolkit/api_parser'

module BookToolkit

  class << self
    def to_isbn13 isbn
      case isbn.length
      when 13
        return ISBN.thirteen isbn
      when 10
        return ISBN.thirteen isbn
      when 12
        return "#{isbn}#{BookToolkit.calculate_checksum(isbn)}"
      when 9
        return ISBN.thirteen("#{isbn}#{BookToolkit.calculate_checksum(isbn)}")
      end
    end

    def calculate_checksum(isbn)
      isbn.gsub!(/[^(\d|X)]/, '')
      c = 0
      if isbn.length <= 10
        10.downto(2) {|i| c += isbn[10-i].to_i * i}
        c %= 11
        c = 11 - c
        c ='X' if c == 10
        return c
      elsif isbn.length <= 13
        (1..11).step(2) {|i| c += isbn[i].to_i}
        c *= 3
        (0..11).step(2) {|i| c += isbn[i].to_i}
        c = (220-c) % 10
        return c
      end
    end
  end
end
