# Ohayo Rails Helper

`ohayo-rails-helper` is the official Rails helper for [Ohayo](http://ohayo.io), a service for setting global user bios.

## Installation

Add this line to your application's Gemfile:

    gem 'ohayo-rails-helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ohayo-rails-helper

## Usage

`ohayo-rails-helper` uses a text tag, which means it can be easily integrated into any Rails view.

```erb
<%= ohayo_tag(@user.email) %>
```

*Ohayo* uses the MD5 of your user's email to retrieve the bio, so no user
emails are passed across the web.

You can customize the error message if a bio cannot be retrieved for the user's
email:

```erb
<%= ohayo_tag(@user.email), error: 'Please use Ohayo!' %>

## Contributing

Pull requests always welcome!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
