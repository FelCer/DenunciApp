require 'test_helper'

class TEstadoCasoCuadrantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_estado_caso_cuadrante = t_estado_caso_cuadrantes(:one)
  end

  test "should get index" do
    get t_estado_caso_cuadrantes_url, as: :json
    assert_response :success
  end

  test "should create t_estado_caso_cuadrante" do
    assert_difference('TEstadoCasoCuadrante.count') do
      post t_estado_caso_cuadrantes_url, params: { t_estado_caso_cuadrante: { cuadrante: @t_estado_caso_cuadrante.cuadrante, id_estado: @t_estado_caso_cuadrante.id_estado, t_muro_caso_id: @t_estado_caso_cuadrante.t_muro_caso_id } }, as: :json
    end

    assert_response 201
  end

  test "should show t_estado_caso_cuadrante" do
    get t_estado_caso_cuadrante_url(@t_estado_caso_cuadrante), as: :json
    assert_response :success
  end

  test "should update t_estado_caso_cuadrante" do
    patch t_estado_caso_cuadrante_url(@t_estado_caso_cuadrante), params: { t_estado_caso_cuadrante: { cuadrante: @t_estado_caso_cuadrante.cuadrante, id_estado: @t_estado_caso_cuadrante.id_estado, t_muro_caso_id: @t_estado_caso_cuadrante.t_muro_caso_id } }, as: :json
    assert_response 200
  end

  test "should destroy t_estado_caso_cuadrante" do
    assert_difference('TEstadoCasoCuadrante.count', -1) do
      delete t_estado_caso_cuadrante_url(@t_estado_caso_cuadrante), as: :json
    end

    assert_response 204
  end
end
