# Resultable

Simple ruby gem that provides reusable result object

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'resultable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resultable

## Usage

Include Resultable in any class that you want

```ruby
class Service
  include Resultable
end
```

Use result object

```ruby
service = Service.new
puts service.result.successful?
=> false
puts service.result.error?
=> true
service.result.successful!
puts service.result.successful?
=> true
puts service.result.error?
=> false
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/resultable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
