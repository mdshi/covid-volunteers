require 'slack/client'

class Invites
    include Virtus.model
    include ActiveModel::Model
  
    attribute :email, String
    validates :email, presence: true
  
    def enqueue
        WorkerForInvitation.perform_async(attributes)
    end
  
    def perform
        slackClient.invite \
        email:    email,
        channels: ENV["SLACK_CHANNELS"].to_s.split(/\s*,\s*/)
    end
  
    private def slackClient
      @slackClient ||= Slack::Client.new \
        subdomain: ENV.fetch("SLACK_SUBDOMAIN"),
        token:     ENV.fetch("SLACK_TOKEN")
    end
  end