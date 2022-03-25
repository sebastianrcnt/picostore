require "test_helper"

class Customer::MembershipSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_membership_subscriptions_new_url
    assert_response :success
  end

  test "should get complete" do
    get customer_membership_subscriptions_complete_url
    assert_response :success
  end

  test "should get index" do
    get customer_membership_subscriptions_index_url
    assert_response :success
  end

  test "should get show" do
    get customer_membership_subscriptions_show_url
    assert_response :success
  end
end
