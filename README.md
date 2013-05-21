# Moshimoshi Rails Helper

`moshimoshi-rails-helper` is the official Rails helper for [Moshimoshi](http://moshimoshi.me), a service for setting global user bios.

## Installation

Add this line to your application's Gemfile:

    gem 'moshimoshi-rails-helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moshimoshi-rails-helper

## Usage

`moshimoshi-rails-helper` uses a text tag, which means it can be easily integrated into any Rails view.

```erb
<%= moshimoshi_tag(@user.email) %>
```

*Moshimoshi* uses the MD5 of your user's email to retrieve the bio, so no user
emails are passed across the web.

You can customize the error message if a bio cannot be retrieved for the user's
email:

```erb
<%= moshimoshi_tag(@user.email), error: 'Bio missing from Moshimoshi' %>

## Contributing

Pull requests always welcome!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
