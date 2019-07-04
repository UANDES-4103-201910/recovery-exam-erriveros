require 'test_helper'

class PaymentMethodsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get payment_methods_update_url
    assert_response :success
  end

end
