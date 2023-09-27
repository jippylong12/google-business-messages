
# frozen_string_literal: true

require_relative "../test_helper"

class GoogleBusinessMessages::TestSchemaValidator < Minitest::Test
  def test_it_works
    GoogleBusinessMessages::Utils::SchemaValidator.new
    assert true
  end

  def test_messages_validation
    data = {
      name: "howdy",
      text: "howdy",
    }
    success, errors = GoogleBusinessMessages::Utils::SchemaValidator.validate(folder: 'message', filename: 'message', data: data)
    assert success
  end

end
