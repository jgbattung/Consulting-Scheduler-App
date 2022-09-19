require "application_system_test_case"

class ConsultationTypesTest < ApplicationSystemTestCase
  setup do
    @consultation_type = consultation_types(:one)
  end

  test "visiting the index" do
    visit consultation_types_url
    assert_selector "h1", text: "Consultation types"
  end

  test "should create consultation type" do
    visit consultation_types_url
    click_on "New consultation type"

    fill_in "Color", with: @consultation_type.color
    fill_in "Duration", with: @consultation_type.duration
    fill_in "Location", with: @consultation_type.location
    fill_in "Name", with: @consultation_type.name
    check "Payment required" if @consultation_type.payment_required
    fill_in "Price", with: @consultation_type.price
    fill_in "User", with: @consultation_type.user_id
    click_on "Create Consultation type"

    assert_text "Consultation type was successfully created"
    click_on "Back"
  end

  test "should update Consultation type" do
    visit consultation_type_url(@consultation_type)
    click_on "Edit this consultation type", match: :first

    fill_in "Color", with: @consultation_type.color
    fill_in "Duration", with: @consultation_type.duration
    fill_in "Location", with: @consultation_type.location
    fill_in "Name", with: @consultation_type.name
    check "Payment required" if @consultation_type.payment_required
    fill_in "Price", with: @consultation_type.price
    fill_in "User", with: @consultation_type.user_id
    click_on "Update Consultation type"

    assert_text "Consultation type was successfully updated"
    click_on "Back"
  end

  test "should destroy Consultation type" do
    visit consultation_type_url(@consultation_type)
    click_on "Destroy this consultation type", match: :first

    assert_text "Consultation type was successfully destroyed"
  end
end
