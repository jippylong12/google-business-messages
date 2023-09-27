# frozen_string_literal: true

require_relative "../test_helper"

class GoogleBusinessMessages::TestClient < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GoogleBusinessMessages::VERSION
  end

  def test_we_can_create_client
    client = GoogleBusinessMessages::Client.new(auth_token: 'howdy')
    assert client != nil
  end

  def test_messages_create
    client = GoogleBusinessMessages::Client.new(auth_token: 'howdy')
    response = client.messages.create
    assert response == 'create'
  end
end
