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

* [Methods](#methods)
* [Usage](#usage)
* [Hash](#hash)
* [Ulid](#ulid)

## Methods

**Modules:**
 * `hash`
 * `ulid`

**Attributes:**
 * `:uxid`

## Usage
```ruby
class User < ActiveRecord::Base
  # Add a uxid attribute to the corresponding table.

  include ActiveUxid::Record
end

# Record hash encoder type
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
