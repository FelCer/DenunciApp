require 'test_helper'

class TPerfilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_perfil = t_perfils(:one)
  end

  test "should get index" do
    get t_perfils_url, as: :json
    assert_response :success
  end

  test "should create t_perfil" do
    assert_difference('TPerfil.count') do
      post t_perfils_url, params: { t_perfil: { T_usuario_id: @t_perfil.T_usuario_id, cuadrante: @t_perfil.cuadrante, fundacion: @t_perfil.fundacion, idPerfil: @t_perfil.idPerfil, persona: @t_perfil.persona } }, as: :json
    end

    assert_response 201
  end

  test "should show t_perfil" do
    get t_perfil_url(@t_perfil), as: :json
    assert_response :success
  end

  test "should update t_perfil" do
    patch t_perfil_url(@t_perfil), params: { t_perfil: { T_usuario_id: @t_perfil.T_usuario_id, cuadrante: @t_perfil.cuadrante, fundacion: @t_perfil.fundacion, idPerfil: @t_perfil.idPerfil, persona: @t_perfil.persona } }, as: :json
    assert_response 200
  end

  test "should destroy t_perfil" do
    assert_difference('TPerfil.count', -1) do
      delete t_perfil_url(@t_perfil), as: :json
    end

    assert_response 204
  end
end
