require "application_system_test_case"

class PingsTest < ApplicationSystemTestCase
  setup do
    @ping = pings(:one)
  end

  test "visiting the index" do
    visit pings_url
    assert_selector "h1", text: "Pings"
  end

  test "creating a Ping" do
    visit pings_url
    click_on "New Ping"

    click_on "Create Ping"

    assert_text "Ping was successfully created"
    click_on "Back"
  end

  test "updating a Ping" do
    visit pings_url
    click_on "Edit", match: :first

    click_on "Update Ping"

    assert_text "Ping was successfully updated"
    click_on "Back"
  end

  test "destroying a Ping" do
    visit pings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ping was successfully destroyed"
  end
end
