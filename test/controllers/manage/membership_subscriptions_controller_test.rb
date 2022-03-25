require "test_helper"

class Manage::MembershipSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_membership_subscriptions_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_membership_subscriptions_show_url
    assert_response :success
  end
end
