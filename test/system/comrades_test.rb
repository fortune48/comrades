require "application_system_test_case"

class ComradesTest < ApplicationSystemTestCase
  setup do
    @comrade = comrades(:one)
  end

  test "visiting the index" do
    visit comrades_url
    assert_selector "h1", text: "Comrades"
  end

  test "should create comrade" do
    visit comrades_url
    click_on "New comrade"

    fill_in "Email", with: @comrade.email
    fill_in "First name", with: @comrade.first_name
    fill_in "Last name", with: @comrade.last_name
    fill_in "Phone", with: @comrade.phone
    fill_in "Twitter", with: @comrade.twitter
    click_on "Create Comrade"

    assert_text "Comrade was successfully created"
    click_on "Back"
  end

  test "should update Comrade" do
    visit comrade_url(@comrade)
    click_on "Edit this comrade", match: :first

    fill_in "Email", with: @comrade.email
    fill_in "First name", with: @comrade.first_name
    fill_in "Last name", with: @comrade.last_name
    fill_in "Phone", with: @comrade.phone
    fill_in "Twitter", with: @comrade.twitter
    click_on "Update Comrade"

    assert_text "Comrade was successfully updated"
    click_on "Back"
  end

  test "should destroy Comrade" do
    visit comrade_url(@comrade)
    click_on "Destroy this comrade", match: :first

    assert_text "Comrade was successfully destroyed"
  end
end
