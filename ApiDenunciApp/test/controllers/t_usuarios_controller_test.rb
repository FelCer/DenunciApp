require 'test_helper'

class TUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_usuario = t_usuarios(:one)
  end

  test "should get index" do
    get t_usuarios_url, as: :json
    assert_response :success
  end

  test "should create t_usuario" do
    assert_difference('TUsuario.count') do
      post t_usuarios_url, params: { t_usuario: { T_perfil_id: @t_usuario.T_perfil_id, celular: @t_usuario.celular, direccion: @t_usuario.direccion, password: @t_usuario.password, user: @t_usuario.user, zona: @t_usuario.zona } }, as: :json
    end

    assert_response 201
  end

  test "should show t_usuario" do
    get t_usuario_url(@t_usuario), as: :json
    assert_response :success
  end

  test "should update t_usuario" do
    patch t_usuario_url(@t_usuario), params: { t_usuario: { T_perfil_id: @t_usuario.T_perfil_id, celular: @t_usuario.celular, direccion: @t_usuario.direccion, password: @t_usuario.password, user: @t_usuario.user, zona: @t_usuario.zona } }, as: :json
    assert_response 200
  end

  test "should destroy t_usuario" do
    assert_difference('TUsuario.count', -1) do
      delete t_usuario_url(@t_usuario), as: :json
    end

    assert_response 204
  end
end
