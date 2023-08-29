require "test_helper"

class UserAuthenticatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_authenticates_index_url
    assert_response :success
  end

  test "should get new" do
    get user_authenticates_new_url
    assert_response :success
  end

  test "should get create" do
    get user_authenticates_create_url
    assert_response :success
  end
end
