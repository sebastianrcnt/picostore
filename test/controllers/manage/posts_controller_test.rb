require "test_helper"

class Manage::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_posts_show_url
    assert_response :success
  end

  test "should get new" do
    get manage_posts_new_url
    assert_response :success
  end

  test "should get edit" do
    get manage_posts_edit_url
    assert_response :success
  end

  test "should get preview" do
    get manage_posts_preview_url
    assert_response :success
  end
end
