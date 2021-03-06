require 'test_helper'

class ProvinciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provincium = provincia(:one)
  end

  test "should get index" do
    get provincia_url
    assert_response :success
  end

  test "should get new" do
    get new_provincium_url
    assert_response :success
  end

  test "should create provincium" do
    assert_difference('Provincium.count') do
      post provincia_url, params: { provincium: { id_region: @provincium.id_region, nombre: @provincium.nombre } }
    end

    assert_redirected_to provincium_url(Provincium.last)
  end

  test "should show provincium" do
    get provincium_url(@provincium)
    assert_response :success
  end

  test "should get edit" do
    get edit_provincium_url(@provincium)
    assert_response :success
  end

  test "should update provincium" do
    patch provincium_url(@provincium), params: { provincium: { id_region: @provincium.id_region, nombre: @provincium.nombre } }
    assert_redirected_to provincium_url(@provincium)
  end

  test "should destroy provincium" do
    assert_difference('Provincium.count', -1) do
      delete provincium_url(@provincium)
    end

    assert_redirected_to provincia_url
  end
end
