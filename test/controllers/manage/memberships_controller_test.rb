require "test_helper"

class Manage::MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_memberships_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_memberships_show_url
    assert_response :success
  end

  test "should get new" do
    get manage_memberships_new_url
    assert_response :success
  end

  test "should get edit" do
    get manage_memberships_edit_url
    assert_response :success
  end

  test "should get preview" do
    get manage_memberships_preview_url
    assert_response :success
  end
end
