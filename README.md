# GoogleBusinessMessages

Simple, efficient API wrapper for [the Google Business Messages API](https://developers.google.com/business-communications/business-messages/reference/rest). It tries not to be opinionated in handling responses and **it assumes you have already have a valid OAuth2 token**. 

If you do not have an OAuth2 token, please review these links
1) [Ruby Google Auth Library](https://github.com/googleapis/google-auth-library-ruby)
2) [Google OAuth2 Overview](https://developers.google.com/identity/protocols/oauth2)
   1) [Google OAuth2 FlowChart](https://developers.google.com/static/identity/protocols/oauth2/images/flows/authorization-code.png)
## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add google-business-messages

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install google-business-messages

## Usage

### Initialize
```ruby
client = GoogleBusinessMessages::Client.new(auth_token: 'HOWDY')
```


### Messages

#### Create - Simple Text
```ruby
client.messages.create(conversation_id: '3e3ef73d-d16f-4a5d-b976-256ba5625c88', 
                       content: "howdy y'all", 
                       message_id: 'd64419d8-bbd5-41fb-84eb-f43ba4fa6629')
```

#### Create - Image
declare the content_type if not sending TEXT | defaults: 'TEXT'

content_type options:  ['TEXT', 'IMAGE', 'RICH']

```ruby
client.messages.create(conversation_id: '3e3ef73d-d16f-4a5d-b976-256ba5625c88', 
                       content: "https://publically.available.image.com", 
                       content_type: GoogleBusinessMessages::Messages::CONTENT_TYPES[:image],
                       message_id: 'd64419d8-bbd5-41fb-84eb-f43ba4fa6629')
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/google-business-messages.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
