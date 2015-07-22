# BookToolkit

幾個常用功能包起來。

還會支援 openlibrary api 還有 campusbooks api。

止飢可以[先看這篇](http://yukaihuang93.logdown.com/posts/255688/campusbooks-com-api-usage)。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'book_toolkit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install book_toolkit

## Usage

```ruby
# convert isbn 通.用.技
valid_isbn_13 = BookToolkit.to_isbn13("YOUR_ISBN_HERE")

# will accept length 9/10/12/13
checksum = BookToolkit.calculate_checksum("YOUR_ISBN_HERE")
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/book_toolkit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
