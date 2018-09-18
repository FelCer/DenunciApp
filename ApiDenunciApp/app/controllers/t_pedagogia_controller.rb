class TPedagogiaController < ApplicationController
  before_action :set_t_pedagogium, only: [:show, :update, :destroy]

  # GET /t_pedagogia
  def index
    @t_pedagogia = TPedagogium.all

    render json: @t_pedagogia
  end

  # GET /t_pedagogia/1
  def show
    render json: @t_pedagogium
  end

  # POST /t_pedagogia
  def create
    @t_pedagogium = TPedagogium.new(t_pedagogium_params)

    if @t_pedagogium.save
      render json: @t_pedagogium, status: :created, location: @t_pedagogium
    else
      render json: @t_pedagogium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_pedagogia/1
  def update
    if @t_pedagogium.update(t_pedagogium_params)
      render json: @t_pedagogium
    else
      render json: @t_pedagogium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_pedagogia/1
  def destroy
    @t_pedagogium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_pedagogium
      @t_pedagogium = TPedagogium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_pedagogium_params
      params.require(:t_pedagogium).permit(:titulo, :descripcion, :img, :fecha_creacion, :T_usuario_id, :T_pedagogia_comentario_id)
    end
end
