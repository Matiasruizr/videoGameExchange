require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Apellido", with: @usuario.apellido
    fill_in "Celular", with: @usuario.celular
    fill_in "Codigo Postal", with: @usuario.codigo_postal
    fill_in "Contrasena", with: @usuario.contrasena
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Fecha Nacimiento", with: @usuario.fecha_nacimiento
    fill_in "Id", with: @usuario.id
    fill_in "Id Comuna", with: @usuario.id_comuna
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Nombre Usuario", with: @usuario.nombre_usuario
    fill_in "Rut", with: @usuario.rut
    fill_in "Sexo", with: @usuario.sexo
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @usuario.apellido
    fill_in "Celular", with: @usuario.celular
    fill_in "Codigo Postal", with: @usuario.codigo_postal
    fill_in "Contrasena", with: @usuario.contrasena
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Fecha Nacimiento", with: @usuario.fecha_nacimiento
    fill_in "Id", with: @usuario.id
    fill_in "Id Comuna", with: @usuario.id_comuna
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Nombre Usuario", with: @usuario.nombre_usuario
    fill_in "Rut", with: @usuario.rut
    fill_in "Sexo", with: @usuario.sexo
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
