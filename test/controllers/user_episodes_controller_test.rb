require 'test_helper'

class UserEpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_episodes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_episodes_destroy_url
    assert_response :success
  end

end
