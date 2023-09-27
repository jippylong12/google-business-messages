require 'faraday'

require_relative "google_business_messages/version"
require_relative 'google_business_messages/messages/messages'
require_relative 'google_business_messages/surveys/surveys'
require_relative 'google_business_messages/events/events'

module GoogleBusinessMessages
  class Error < StandardError; end

  class Client
    BASE_URL = 'https://businessmessages.googleapis.com/v1/'

    def initialize(auth_token:)
      @auth_token = auth_token
      @connection = Faraday.new(url: BASE_URL) do |builder|
        builder.request :authorization, 'Bearer', @auth_token
        builder.adapter Faraday.default_adapter
      end
    end

    def events
      @events ||= Events.new(self)
    end

    def messages
      @messages ||= Messages.new(self)
    end

    def surveys
      @surveys ||= Surveys.new(self)
    end
  end
end