require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should be valid" do
    assert posts(:post_1).valid?
  end
end
