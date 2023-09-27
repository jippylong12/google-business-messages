module GoogleBusinessMessages
  class Messages
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create
      puts "we are creating"
      'create'
    end

    def list
      # Make a request to the API to list all messages
      # ...
    end
  end
end