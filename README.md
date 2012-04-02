# UseIndex

This is a very simple ActiveRecord extension to let you force usage of a particular index for cases where MySQL refuses to use the best available one.  Let's face it, sometimes MySQL is dumb.

However, you should probably have a very good reason for wanting to use a different index than MySQL is choosing for you.  If you haven't already debugged and profiled your query, this gem is probably not for you.

## Installation

Add this line to your application's Gemfile:

    gem 'use_index'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install use_index

## Usage

Chain `use_index` along with other ActiveRecord methods.  For example:

```ruby
Event.where(:event_type => "date").use_index("some_crazy_index_you_want_to_use")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
