# frozen_string_literal: true

require "test_helper"

class GoogleBusinessMessages::TestMessages < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GoogleBusinessMessages::VERSION
  end

  def test_we_can_create_client
    client = GoogleBusinessMessages::Client.new(auth_token: 'howdy')
    assert client != nil
  end
end
