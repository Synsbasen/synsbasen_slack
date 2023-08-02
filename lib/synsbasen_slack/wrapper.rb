require "slack-ruby-client"

module SynsbasenSlack
  class Wrapper
    attr_accessor :client, :thread_id

    def initialize
      @client = Slack::Web::Client.new(token: SynsbasenSlack.config[:slack_access_token])
      @client.auth_test
    end

    def chat_postMessage(*args)
      # Add a default channel if one is not provided
      args[0][:channel] ||= SynsbasenSlack.config[:slack_default_channel]
      args[0][:thread_ts] ||= @thread_id

      Rails.logger.info "Sending Slack message: #{args}"
      response = @client.chat_postMessage(*args)

      # If we're in a thread, we want to save the thread_id so we can reply to it later
      @thread_id ||= response['ts']

      response
    end
  end
end
