require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  test "should get post title" do
    get posts_url
    assert_response :success
    assert_select "tr", 2
  end
end
