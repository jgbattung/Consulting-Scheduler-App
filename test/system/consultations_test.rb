require "application_system_test_case"

class ConsultationsTest < ApplicationSystemTestCase
  setup do
    @consultation = consultations(:one)
  end

  test "visiting the index" do
    visit consultations_url
    assert_selector "h1", text: "Consultations"
  end

  test "should create consultation" do
    visit consultations_url
    click_on "New consultation"

    fill_in "Email", with: @consultation.email
    fill_in "End at", with: @consultation.end_at
    fill_in "First name", with: @consultation.first_name
    fill_in "Last name", with: @consultation.last_name
    fill_in "Start at", with: @consultation.start_at
    fill_in "Status", with: @consultation.status
    click_on "Create Consultation"

    assert_text "Consultation was successfully created"
    click_on "Back"
  end

  test "should update Consultation" do
    visit consultation_url(@consultation)
    click_on "Edit this consultation", match: :first

    fill_in "Email", with: @consultation.email
    fill_in "End at", with: @consultation.end_at
    fill_in "First name", with: @consultation.first_name
    fill_in "Last name", with: @consultation.last_name
    fill_in "Start at", with: @consultation.start_at
    fill_in "Status", with: @consultation.status
    click_on "Update Consultation"

    assert_text "Consultation was successfully updated"
    click_on "Back"
  end

  test "should destroy Consultation" do
    visit consultation_url(@consultation)
    click_on "Destroy this consultation", match: :first

    assert_text "Consultation was successfully destroyed"
  end
end
