require "test_helper"

class Manage::ProductOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_product_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_product_orders_show_url
    assert_response :success
  end
end
