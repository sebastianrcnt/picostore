require "test_helper"

class Customer::ProductOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_product_orders_new_url
    assert_response :success
  end

  test "should get complete" do
    get customer_product_orders_complete_url
    assert_response :success
  end

  test "should get index" do
    get customer_product_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get customer_product_orders_show_url
    assert_response :success
  end
end
