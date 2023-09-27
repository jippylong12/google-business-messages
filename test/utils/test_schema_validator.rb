
# frozen_string_literal: true

require_relative "../test_helper"

class GoogleBusinessMessages::TestSchemaValidator < Minitest::Test
  def test_it_works
    GoogleBusinessMessages::Utils::SchemaValidator.new.validate
    assert true
  end

end
