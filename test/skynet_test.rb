require "test_helper"

class SkynetTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Skynet::VERSION
  end
end
