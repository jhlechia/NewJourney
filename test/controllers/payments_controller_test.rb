require 'test_helper'

class PaymentsControllerTest < ActionController::TestCase
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post :create, payment: { address: @payment.address, billing_address: @payment.billing_address, city: @payment.city, credit_card_number: @payment.credit_card_number, email: @payment.email, payment_type: @payment.payment_type, state: @payment.state, zip: @payment.zip }
    end

    assert_redirected_to payment_path(assigns(:payment))
  end

  test "should show payment" do
    get :show, id: @payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment
    assert_response :success
  end

  test "should update payment" do
    patch :update, id: @payment, payment: { address: @payment.address, billing_address: @payment.billing_address, city: @payment.city, credit_card_number: @payment.credit_card_number, email: @payment.email, payment_type: @payment.payment_type, state: @payment.state, zip: @payment.zip }
    assert_redirected_to payment_path(assigns(:payment))
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete :destroy, id: @payment
    end

    assert_redirected_to payments_path
  end
end
