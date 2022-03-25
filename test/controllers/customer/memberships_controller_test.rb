require "test_helper"

class Customer::MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get customer_memberships_show_url
    assert_response :success
  end
end
