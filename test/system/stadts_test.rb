require "application_system_test_case"

class StadtsTest < ApplicationSystemTestCase
  setup do
    @stadt = stadts(:one)
  end

  test "visiting the index" do
    visit stadts_url
    assert_selector "h1", text: "Stadts"
  end

  test "creating a Stadt" do
    visit stadts_url
    click_on "New Stadt"

    fill_in "Anzahleinwohner", with: @stadt.anzahlEinwohner
    fill_in "Name", with: @stadt.name
    fill_in "Ort", with: @stadt.ort
    click_on "Create Stadt"

    assert_text "Stadt was successfully created"
    click_on "Back"
  end

  test "updating a Stadt" do
    visit stadts_url
    click_on "Edit", match: :first

    fill_in "Anzahleinwohner", with: @stadt.anzahlEinwohner
    fill_in "Name", with: @stadt.name
    fill_in "Ort", with: @stadt.ort
    click_on "Update Stadt"

    assert_text "Stadt was successfully updated"
    click_on "Back"
  end

  test "destroying a Stadt" do
    visit stadts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stadt was successfully destroyed"
  end
end
