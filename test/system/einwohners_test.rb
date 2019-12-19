require "application_system_test_case"

class EinwohnersTest < ApplicationSystemTestCase
  setup do
    @einwohner = einwohners(:one)
  end

  test "visiting the index" do
    visit einwohners_url
    assert_selector "h1", text: "Einwohners"
  end

  test "creating a Einwohner" do
    visit einwohners_url
    click_on "New Einwohner"

    fill_in "Alter", with: @einwohner.alter
    fill_in "Name", with: @einwohner.name
    fill_in "Stadt", with: @einwohner.stadt_id
    click_on "Create Einwohner"

    assert_text "Einwohner was successfully created"
    click_on "Back"
  end

  test "updating a Einwohner" do
    visit einwohners_url
    click_on "Edit", match: :first

    fill_in "Alter", with: @einwohner.alter
    fill_in "Name", with: @einwohner.name
    fill_in "Stadt", with: @einwohner.stadt_id
    click_on "Update Einwohner"

    assert_text "Einwohner was successfully updated"
    click_on "Back"
  end

  test "destroying a Einwohner" do
    visit einwohners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Einwohner was successfully destroyed"
  end
end
