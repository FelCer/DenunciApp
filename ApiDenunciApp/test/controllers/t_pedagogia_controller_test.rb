require 'test_helper'

class TPedagogiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_pedagogium = t_pedagogia(:one)
  end

  test "should get index" do
    get t_pedagogia_url, as: :json
    assert_response :success
  end

  test "should create t_pedagogium" do
    assert_difference('TPedagogium.count') do
      post t_pedagogia_url, params: { t_pedagogium: { T_pedagogia_comentario_id: @t_pedagogium.T_pedagogia_comentario_id, T_usuario_id: @t_pedagogium.T_usuario_id, descripcion: @t_pedagogium.descripcion, fecha_creacion: @t_pedagogium.fecha_creacion, img: @t_pedagogium.img, titulo: @t_pedagogium.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show t_pedagogium" do
    get t_pedagogium_url(@t_pedagogium), as: :json
    assert_response :success
  end

  test "should update t_pedagogium" do
    patch t_pedagogium_url(@t_pedagogium), params: { t_pedagogium: { T_pedagogia_comentario_id: @t_pedagogium.T_pedagogia_comentario_id, T_usuario_id: @t_pedagogium.T_usuario_id, descripcion: @t_pedagogium.descripcion, fecha_creacion: @t_pedagogium.fecha_creacion, img: @t_pedagogium.img, titulo: @t_pedagogium.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy t_pedagogium" do
    assert_difference('TPedagogium.count', -1) do
      delete t_pedagogium_url(@t_pedagogium), as: :json
    end

    assert_response 204
  end
end
