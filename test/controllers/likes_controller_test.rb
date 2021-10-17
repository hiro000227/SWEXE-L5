require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get tweet_id:integer" do
    get likes_tweet_id:integer_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get likes_user_id:integer_url
    assert_response :success
  end

end
