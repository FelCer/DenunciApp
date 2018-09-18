require 'test_helper'

class TPedagogiaComentariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_pedagogia_comentario = t_pedagogia_comentarios(:one)
  end

  test "should get index" do
    get t_pedagogia_comentarios_url, as: :json
    assert_response :success
  end

  test "should create t_pedagogia_comentario" do
    assert_difference('TPedagogiaComentario.count') do
      post t_pedagogia_comentarios_url, params: { t_pedagogia_comentario: { T_pedagodia_id: @t_pedagogia_comentario.T_pedagodia_id, T_usuario_references: @t_pedagogia_comentario.T_usuario_references, descripcion: @t_pedagogia_comentario.descripcion, fecha_creacion: @t_pedagogia_comentario.fecha_creacion } }, as: :json
    end

    assert_response 201
  end

  test "should show t_pedagogia_comentario" do
    get t_pedagogia_comentario_url(@t_pedagogia_comentario), as: :json
    assert_response :success
  end

  test "should update t_pedagogia_comentario" do
    patch t_pedagogia_comentario_url(@t_pedagogia_comentario), params: { t_pedagogia_comentario: { T_pedagodia_id: @t_pedagogia_comentario.T_pedagodia_id, T_usuario_references: @t_pedagogia_comentario.T_usuario_references, descripcion: @t_pedagogia_comentario.descripcion, fecha_creacion: @t_pedagogia_comentario.fecha_creacion } }, as: :json
    assert_response 200
  end

  test "should destroy t_pedagogia_comentario" do
    assert_difference('TPedagogiaComentario.count', -1) do
      delete t_pedagogia_comentario_url(@t_pedagogia_comentario), as: :json
    end

    assert_response 204
  end
end
