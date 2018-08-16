require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url, as: :json
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { celular: @usuario.celular, direccion: @usuario.direccion, password: @usuario.password, perfil_id: @usuario.perfil_id, user: @usuario.user, zona: @usuario.zona } }, as: :json
    end

    assert_response 201
  end

  test "should show usuario" do
    get usuario_url(@usuario), as: :json
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { celular: @usuario.celular, direccion: @usuario.direccion, password: @usuario.password, perfil_id: @usuario.perfil_id, user: @usuario.user, zona: @usuario.zona } }, as: :json
    assert_response 200
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario), as: :json
    end

    assert_response 204
  end
end
