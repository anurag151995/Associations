require 'test_helper'

class Post1sControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post1s_new_url
    assert_response :success
  end

  test "should get create" do
    get post1s_create_url
    assert_response :success
  end

  test "should get show" do
    get post1s_show_url
    assert_response :success
  end

end
