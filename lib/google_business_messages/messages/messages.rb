module GoogleBusinessMessages
  class Messages
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(conversation_id:)

      response = @connection.post("conversations/#{conversation_id}/messages", body.to_json, {'Content-Type': 'application/json'})
      response_body = JSON.parse response.body
      if response.success?
        true
      else
        false
      end
    end

    def list
      # Make a request to the API to list all messages
      # ...
    end
  end
end