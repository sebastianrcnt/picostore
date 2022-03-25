require "test_helper"

class Manage::StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get manage_stores_show_url
    assert_response :success
  end

  test "should get edit" do
    get manage_stores_edit_url
    assert_response :success
  end
end
