require "application_system_test_case"

class PublicacionsTest < ApplicationSystemTestCase
  setup do
    @publicacion = publicacions(:one)
  end

  test "visiting the index" do
    visit publicacions_url
    assert_selector "h1", text: "Publicacions"
  end

  test "creating a Publicacion" do
    visit publicacions_url
    click_on "New Publicacion"

    fill_in "Comentarios", with: @publicacion.comentarios
    fill_in "Nombrejuegoofrece", with: @publicacion.nombreJuegoOfrece
    fill_in "Nombrejuegobusca", with: @publicacion.nombreJuegobusca
    fill_in "Usuario", with: @publicacion.usuario
    click_on "Create Publicacion"

    assert_text "Publicacion was successfully created"
    click_on "Back"
  end

  test "updating a Publicacion" do
    visit publicacions_url
    click_on "Edit", match: :first

    fill_in "Comentarios", with: @publicacion.comentarios
    fill_in "Nombrejuegoofrece", with: @publicacion.nombreJuegoOfrece
    fill_in "Nombrejuegobusca", with: @publicacion.nombreJuegobusca
    fill_in "Usuario", with: @publicacion.usuario
    click_on "Update Publicacion"

    assert_text "Publicacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Publicacion" do
    visit publicacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publicacion was successfully destroyed"
  end
end
