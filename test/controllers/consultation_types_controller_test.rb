require "test_helper"

class ConsultationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultation_type = consultation_types(:one)
  end

  test "should get index" do
    get consultation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_consultation_type_url
    assert_response :success
  end

  test "should create consultation_type" do
    assert_difference("ConsultationType.count") do
      post consultation_types_url, params: { consultation_type: { color: @consultation_type.color, duration: @consultation_type.duration, location: @consultation_type.location, name: @consultation_type.name, payment_required: @consultation_type.payment_required, price: @consultation_type.price, user_id: @consultation_type.user_id } }
    end

    assert_redirected_to consultation_type_url(ConsultationType.last)
  end

  test "should show consultation_type" do
    get consultation_type_url(@consultation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultation_type_url(@consultation_type)
    assert_response :success
  end

  test "should update consultation_type" do
    patch consultation_type_url(@consultation_type), params: { consultation_type: { color: @consultation_type.color, duration: @consultation_type.duration, location: @consultation_type.location, name: @consultation_type.name, payment_required: @consultation_type.payment_required, price: @consultation_type.price, user_id: @consultation_type.user_id } }
    assert_redirected_to consultation_type_url(@consultation_type)
  end

  test "should destroy consultation_type" do
    assert_difference("ConsultationType.count", -1) do
      delete consultation_type_url(@consultation_type)
    end

    assert_redirected_to consultation_types_url
  end
end
