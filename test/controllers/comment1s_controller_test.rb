require 'test_helper'

class Comment1sControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comment1s_new_url
    assert_response :success
  end

  test "should get create" do
    get comment1s_create_url
    assert_response :success
  end

  test "should get show" do
    get comment1s_show_url
    assert_response :success
  end

end
