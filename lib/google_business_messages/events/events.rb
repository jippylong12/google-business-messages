module GoogleBusinessMessages
  class Events
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(params)
      # Make a request to the API to create a new event
      # ...
    end

    def list
      # Make a request to the API to list all events
      # ...
    end
  end
end