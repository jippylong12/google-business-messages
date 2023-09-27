
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
    }
    success, errors = GoogleBusinessMessages::Utils::SchemaValidator.validate(filename: 'message', data: data)
    assert success
  end

end
