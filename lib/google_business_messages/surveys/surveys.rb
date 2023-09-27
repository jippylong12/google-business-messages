module GoogleBusinessMessages
  class Surveys
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(params)
      # Make a request to the API to create a new survey
      # ...
    end

    def list
      # Make a request to the API to list all surveys
      # ...
    end
  end
end