class TPedagogiaComentariosController < ApplicationController
  before_action :set_t_pedagogia_comentario, only: [:show, :update, :destroy]

  # GET /t_pedagogia_comentarios
  def index
    @t_pedagogia_comentarios = TPedagogiaComentario.all

    render json: @t_pedagogia_comentarios
  end

  # GET /t_pedagogia_comentarios/1
  def show
    render json: @t_pedagogia_comentario
  end

  # POST /t_pedagogia_comentarios
  def create
    @t_pedagogia_comentario = TPedagogiaComentario.new(t_pedagogia_comentario_params)

    if @t_pedagogia_comentario.save
      render json: @t_pedagogia_comentario, status: :created, location: @t_pedagogia_comentario
    else
      render json: @t_pedagogia_comentario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_pedagogia_comentarios/1
  def update
    if @t_pedagogia_comentario.update(t_pedagogia_comentario_params)
      render json: @t_pedagogia_comentario
    else
      render json: @t_pedagogia_comentario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_pedagogia_comentarios/1
  def destroy
    @t_pedagogia_comentario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_pedagogia_comentario
      @t_pedagogia_comentario = TPedagogiaComentario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_pedagogia_comentario_params
      params.require(:t_pedagogia_comentario).permit(:T_pedagodia_id, :descripcion, :fecha_creacion, :T_usuario_references)
    end
end
