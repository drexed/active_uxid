# ActiveUxid

[![Gem Version](https://badge.fury.io/rb/active_uxid.svg)](http://badge.fury.io/rb/active_uxid)
[![Build Status](https://travis-ci.org/drexed/active_uxid.svg?branch=master)](https://travis-ci.org/drexed/active_uxid)

ActiveUxid is a library for generating obfuscated UXid's.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_uxid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_uxid

## Table of Contents

* [Configuration](#configuration)
* [Hash](#hash)
* [Ulid](#ulid)
* [ActiveRecord](#active_record)

## Configuration

`rails generate active_uxid:install` will generate the following file:
`../config/initalizers/active_uxid.rb`

```ruby
ActiveUxid.configure do |config|
  config.encoding_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  config.encoding_length = 26
  config.encoding_salt = 1369136
end
```

## Hash
```ruby
# Hash ID's are reversible but less performant
# than ULID

ActiveUxid::Hash.encode(10)         #=> 'q5D8inm0'
ActiveUxid::Hash.decode('q5D8inm0') #=> 10
```

## Ulid
```ruby
# ULID are secure as they are not reversible
# They are also more performant than Hash ID's

ActiveUxid::Ulid.encode #=> '1mqfg9qa96s8s5f02o1ucf8lcc'
```

## ActiveRecord
```ruby
class User < ActiveRecord::Base
  # Add a uxid binary attribute to the corresponding table.

  include ActiveUxid::Record::Hash
  # Or
  include ActiveUxid::Record::Ulid
end

# Hash UXid's type only
User.find_by_uxid('x123') #=> find record by uxid

user = User.new
user.uxid_to_id          #=> decodes the records uxid to id
```

## Contributing

Your contribution is welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
