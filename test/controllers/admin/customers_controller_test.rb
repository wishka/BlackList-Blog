require "test_helper"

class Admin::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_customers_new_url
    assert_response :success
  end
end
