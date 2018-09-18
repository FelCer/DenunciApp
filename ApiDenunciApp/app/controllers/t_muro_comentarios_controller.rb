class TMuroComentariosController < ApplicationController
  before_action :set_t_muro_comentario, only: [:show, :update, :destroy]

  # GET /t_muro_comentarios
  def index
    @t_muro_comentarios = TMuroComentario.all

    render json: @t_muro_comentarios
  end

  # GET /t_muro_comentarios/1
  def show
    render json: @t_muro_comentario
  end

  # POST /t_muro_comentarios
  def create
    @t_muro_comentario = TMuroComentario.new(t_muro_comentario_params)

    if @t_muro_comentario.save
      render json: @t_muro_comentario, status: :created, location: @t_muro_comentario
    else
      render json: @t_muro_comentario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_muro_comentarios/1
  def update
    if @t_muro_comentario.update(t_muro_comentario_params)
      render json: @t_muro_comentario
    else
      render json: @t_muro_comentario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_muro_comentarios/1
  def destroy
    @t_muro_comentario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_muro_comentario
      @t_muro_comentario = TMuroComentario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_muro_comentario_params
      params.require(:t_muro_comentario).permit(:caso, :descripcion, :fecha_descripcion, :T_usuario_id)
    end
end
