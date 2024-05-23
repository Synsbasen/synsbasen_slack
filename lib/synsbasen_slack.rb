require "synsbasen_slack/version"
require "synsbasen_slack/wrapper"
require "ostruct"

module SynsbasenSlack
  REQUIRED_CONFIGS = %i[slack_access_token slack_default_channel]

  def self.configure
    @config ||= OpenStruct.new
    yield(@config) if block_given?
    raise "Missing configuration. Required configurations are #{REQUIRED_CONFIGS}" unless REQUIRED_CONFIGS.all? { |c| @config[c] }
    @config
  end

  def self.config
    @config || configure
  end
end
