require "test_helper"

class Manage::PayoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_payouts_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_payouts_show_url
    assert_response :success
  end
end
