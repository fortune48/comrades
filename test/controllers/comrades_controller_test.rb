require "test_helper"

class ComradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comrade = comrades(:one)
  end

  test "should get index" do
    get comrades_url
    assert_response :success
  end

  test "should get new" do
    get new_comrade_url
    assert_response :success
  end

  test "should create comrade" do
    assert_difference("Comrade.count") do
      post comrades_url, params: { comrade: { email: @comrade.email, first_name: @comrade.first_name, last_name: @comrade.last_name, phone: @comrade.phone, twitter: @comrade.twitter } }
    end

    assert_redirected_to comrade_url(Comrade.last)
  end

  test "should show comrade" do
    get comrade_url(@comrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_comrade_url(@comrade)
    assert_response :success
  end

  test "should update comrade" do
    patch comrade_url(@comrade), params: { comrade: { email: @comrade.email, first_name: @comrade.first_name, last_name: @comrade.last_name, phone: @comrade.phone, twitter: @comrade.twitter } }
    assert_redirected_to comrade_url(@comrade)
  end

  test "should destroy comrade" do
    assert_difference("Comrade.count", -1) do
      delete comrade_url(@comrade)
    end

    assert_redirected_to comrades_url
  end
end
