
# frozen_string_literal: true

require_relative "../test_helper"

class GoogleBusinessMessages::TestSchemaValidator < Minitest::Test
  def test_it_works
    GoogleBusinessMessages::Utils::SchemaValidator.new
    assert true
  end

  def test_messages_validation
    data = {
      text: "howdy",
      messageId: 'dsafsdfadf',
      representative: {
        representativeType: "HUMAN"
      }
    }
    success, errors = GoogleBusinessMessages::Utils::SchemaValidator.validate(folder: 'message', filename: 'message', data: data)
    puts errors.join("").split("\n")
    assert success
  end

  def test_message_image_validation
    data = {
      image: {
        contentInfo: {
          fileUrl: "blah",
        }
      },
      messageId: 'dsafsdfadf',
      representative: {
        representativeType: "HUMAN"
      }
    }
    success, errors = GoogleBusinessMessages::Utils::SchemaValidator.validate(folder: 'message', filename: 'message', data: data)
    puts errors.join("").split("\n")
    assert success
  end

end
