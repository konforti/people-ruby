# People Ruby bindings

The People Ruby bindings provide a small SDK for convenient access to the People API from applications written in the Ruby language. 

## Documentation

[API Docs](http://www.konforti.net/slate)

## Installation

You don't need this source code unless you want to modify the gem. 
If you just want to use the People Ruby bindings, you should run:

``` bash
$ gem install people
```

or with [Bundler](http://bundler.io)

```ruby
gem 'people'
```

If you want to build the gem from source:

``` bash
$ gem build people.gemspec
```

## Basic usage

```ruby
require "people"

people = People::Client.new(
  secret_key: "YOUR SECRET KEY",
  domain: "YOUR People's installation path"
)

puts people.get_users
```

## Development

If you want to build the gem from source:

``` bash
$ gem build stripe.gemspec
```

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/konforti/people-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org/  ) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

