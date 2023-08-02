# Synsbasen Slack
A simple wrapper that defines a SynsbasenSlack::Wrapper class to be used when sending messages to Slack.

## Configuration
Start by creating a new initializer:
```bash
$ touch config/initializers/synsbasen_slack.rb
```

Next, configure the gem by inserting the following:
```ruby
SynsbasenSlack.configure do |config|
  config.slack_access_token = ENV['SLACK_ACCESS_TOKEN']
  config.slack_default_channel = ENV['SLACK_DEFAULT_CHANNEL']
end
```

Finally, use the `Wrapper` class to send messages:
```ruby
SynsbasenSlack::Wrapper.chat_postMessage(text: "This is (hopefully a successful 🤞) test!")
```
