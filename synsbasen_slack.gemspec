require_relative "lib/synsbasen_slack/version"

Gem::Specification.new do |s|
  s.name        = "synsbasen_slack"
  s.version     = SynsbasenSlack::VERSION
  s.summary     = "Simple wrapper used to send messages using slack-ruby-client"
  s.description = "A simple wrapper that defines a SynsbasenSlack::Wrapper class to be used when sending messages to Slack."
  s.authors     = ["Jimmy Poulsen", "Tobias Knudsen"]
  s.email       = ["jimmypoulsen96@gmail.com", "tobias.knudsen@gmail.com"]
  s.files       = ["lib/synsbasen_slack.rb", "lib/synsbasen_slack/wrapper.rb", "lib/synsbasen_slack/version.rb"]
  s.homepage    = "https://synsbasen.dk"
  s.license     = "MIT"

  s.add_runtime_dependency 'rails'
  s.add_runtime_dependency "slack-ruby-client", "~> 2.1.0"
  s.add_runtime_dependency "async-websocket", "~> 0.8.0"
end
