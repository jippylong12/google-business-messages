require 'json'
require 'json-schema'

module GoogleBusinessMessages
  module Utils
    class SchemaValidator
      def self.validate(folder: '', filename:, data:)
        file_path = File.join("lib/google_business_messages/utils/schemas",folder,  "message.json")
        schema = JSON.parse(File.read(file_path))
        errors = JSON::Validator.fully_validate(schema, data)
        return errors.length == 0, errors
      end
    end
  end
end

