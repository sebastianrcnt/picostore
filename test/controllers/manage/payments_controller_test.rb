require "test_helper"

class Manage::PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_payments_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_payments_show_url
    assert_response :success
  end
end
