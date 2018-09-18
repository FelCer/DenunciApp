require 'test_helper'

class TMuroComentariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_muro_comentario = t_muro_comentarios(:one)
  end

  test "should get index" do
    get t_muro_comentarios_url, as: :json
    assert_response :success
  end

  test "should create t_muro_comentario" do
    assert_difference('TMuroComentario.count') do
      post t_muro_comentarios_url, params: { t_muro_comentario: { T_usuario_id: @t_muro_comentario.T_usuario_id, caso: @t_muro_comentario.caso, descripcion: @t_muro_comentario.descripcion, fecha_descripcion: @t_muro_comentario.fecha_descripcion } }, as: :json
    end

    assert_response 201
  end

  test "should show t_muro_comentario" do
    get t_muro_comentario_url(@t_muro_comentario), as: :json
    assert_response :success
  end

  test "should update t_muro_comentario" do
    patch t_muro_comentario_url(@t_muro_comentario), params: { t_muro_comentario: { T_usuario_id: @t_muro_comentario.T_usuario_id, caso: @t_muro_comentario.caso, descripcion: @t_muro_comentario.descripcion, fecha_descripcion: @t_muro_comentario.fecha_descripcion } }, as: :json
    assert_response 200
  end

  test "should destroy t_muro_comentario" do
    assert_difference('TMuroComentario.count', -1) do
      delete t_muro_comentario_url(@t_muro_comentario), as: :json
    end

    assert_response 204
  end
end
