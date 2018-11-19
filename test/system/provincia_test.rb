require "application_system_test_case"

class ProvinciaTest < ApplicationSystemTestCase
  setup do
    @provincium = provincia(:one)
  end

  test "visiting the index" do
    visit provincia_url
    assert_selector "h1", text: "Provincia"
  end

  test "creating a Provincium" do
    visit provincia_url
    click_on "New Provincium"

    fill_in "Id Region", with: @provincium.id_region
    fill_in "Nombre", with: @provincium.nombre
    click_on "Create Provincium"

    assert_text "Provincium was successfully created"
    click_on "Back"
  end

  test "updating a Provincium" do
    visit provincia_url
    click_on "Edit", match: :first

    fill_in "Id Region", with: @provincium.id_region
    fill_in "Nombre", with: @provincium.nombre
    click_on "Update Provincium"

    assert_text "Provincium was successfully updated"
    click_on "Back"
  end

  test "destroying a Provincium" do
    visit provincia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provincium was successfully destroyed"
  end
end
