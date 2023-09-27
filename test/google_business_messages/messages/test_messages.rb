require_relative "../../test_helper"

class GoogleBusinessMessages::Messages::TestMessages < Minitest::Test
  def test_create
    client = GoogleBusinessMessages::Client.new(auth_token: 'howdy')
    response = client.messages.create
    assert response == 'create'
  end
end