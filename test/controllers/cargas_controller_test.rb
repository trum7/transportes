require 'test_helper'

class CargasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carga = cargas(:one)
  end

  test "should get index" do
    get cargas_url
    assert_response :success
  end

  test "should get new" do
    get new_carga_url
    assert_response :success
  end

  test "should create carga" do
    assert_difference('Carga.count') do
      post cargas_url, params: { carga: { alto: @carga.alto, ancho: @carga.ancho, cajas: @carga.cajas, costoManejo: @carga.costoManejo, direccion: @carga.direccion, flete: @carga.flete, fleteTotal: @carga.fleteTotal, guia: @carga.guia, largo: @carga.largo, nombreDestinatario: @carga.nombreDestinatario, pesoEstimado: @carga.pesoEstimado, recibeSabados: @carga.recibeSabados, telefonoDestinatario: @carga.telefonoDestinatario, user: @carga.user, valorAsegurado: @carga.valorAsegurado } }
    end

    assert_redirected_to carga_url(Carga.last)
  end

  test "should show carga" do
    get carga_url(@carga)
    assert_response :success
  end

  test "should get edit" do
    get edit_carga_url(@carga)
    assert_response :success
  end

  test "should update carga" do
    patch carga_url(@carga), params: { carga: { alto: @carga.alto, ancho: @carga.ancho, cajas: @carga.cajas, costoManejo: @carga.costoManejo, direccion: @carga.direccion, flete: @carga.flete, fleteTotal: @carga.fleteTotal, guia: @carga.guia, largo: @carga.largo, nombreDestinatario: @carga.nombreDestinatario, pesoEstimado: @carga.pesoEstimado, recibeSabados: @carga.recibeSabados, telefonoDestinatario: @carga.telefonoDestinatario, user: @carga.user, valorAsegurado: @carga.valorAsegurado } }
    assert_redirected_to carga_url(@carga)
  end

  test "should destroy carga" do
    assert_difference('Carga.count', -1) do
      delete carga_url(@carga)
    end

    assert_redirected_to cargas_url
  end
end
