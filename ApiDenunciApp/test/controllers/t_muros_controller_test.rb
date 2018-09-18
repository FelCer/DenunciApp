require 'test_helper'

class TMurosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_muro = t_muros(:one)
  end

  test "should get index" do
    get t_muros_url, as: :json
    assert_response :success
  end

  test "should create t_muro" do
    assert_difference('TMuro.count') do
      post t_muros_url, params: { t_muro: { T_usuario_id: @t_muro.T_usuario_id, caso: @t_muro.caso, descripcion: @t_muro.descripcion, fecha_creacion: @t_muro.fecha_creacion, img: @t_muro.img, ubicacion: @t_muro.ubicacion } }, as: :json
    end

    assert_response 201
  end

  test "should show t_muro" do
    get t_muro_url(@t_muro), as: :json
    assert_response :success
  end

  test "should update t_muro" do
    patch t_muro_url(@t_muro), params: { t_muro: { T_usuario_id: @t_muro.T_usuario_id, caso: @t_muro.caso, descripcion: @t_muro.descripcion, fecha_creacion: @t_muro.fecha_creacion, img: @t_muro.img, ubicacion: @t_muro.ubicacion } }, as: :json
    assert_response 200
  end

  test "should destroy t_muro" do
    assert_difference('TMuro.count', -1) do
      delete t_muro_url(@t_muro), as: :json
    end

    assert_response 204
  end
end
