# BeeceptorRuby

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add beeceptor_ruby

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install beeceptor_ruby

## Usage

This gem provides access to the Beeceptor REST API.

```ruby
require 'beeceptor_ruby'

options = {
  :api_key  => 'YOUR_API_KEY',
  :endpoint => 'YOUR_ENDPOINT'
}

client = BeeceptorRuby::Client.new(options)

puts client.list_rules
```

## Beeceptor REST API Documentation
- [Overview](https://docs.beeceptor.com/docs/api-overview/)
- [Rules](https://docs.beeceptor.com/docs/features-mocking-rules/)
- [History](https://docs.beeceptor.com/docs/api-request-history/)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/beeceptor_ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Need this for your python project?

If you're on a python stack this gem also comes in a python flavor! Check it out here: https://github.com/chdavis180/beeceptorpy
