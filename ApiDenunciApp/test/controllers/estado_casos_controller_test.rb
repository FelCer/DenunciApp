require 'test_helper'

class EstadoCasosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_caso = estado_casos(:one)
  end

  test "should get index" do
    get estado_casos_url, as: :json
    assert_response :success
  end

  test "should create estado_caso" do
    assert_difference('EstadoCaso.count') do
      post estado_casos_url, params: { estado_caso: { T_estado_caso_cuadrante_id: @estado_caso.T_estado_caso_cuadrante_id, estado: @estado_caso.estado } }, as: :json
    end

    assert_response 201
  end

  test "should show estado_caso" do
    get estado_caso_url(@estado_caso), as: :json
    assert_response :success
  end

  test "should update estado_caso" do
    patch estado_caso_url(@estado_caso), params: { estado_caso: { T_estado_caso_cuadrante_id: @estado_caso.T_estado_caso_cuadrante_id, estado: @estado_caso.estado } }, as: :json
    assert_response 200
  end

  test "should destroy estado_caso" do
    assert_difference('EstadoCaso.count', -1) do
      delete estado_caso_url(@estado_caso), as: :json
    end

    assert_response 204
  end
end
