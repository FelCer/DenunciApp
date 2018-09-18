class TMurosController < ApplicationController
  before_action :set_t_muro, only: [:show, :update, :destroy]

  # GET /t_muros
  def index
    @t_muros = TMuro.all

    render json: @t_muros
  end

  # GET /t_muros/1
  def show
    render json: @t_muro
  end

  # POST /t_muros
  def create
    @t_muro = TMuro.new(t_muro_params)

    if @t_muro.save
      render json: @t_muro, status: :created, location: @t_muro
    else
      render json: @t_muro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_muros/1
  def update
    if @t_muro.update(t_muro_params)
      render json: @t_muro
    else
      render json: @t_muro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_muros/1
  def destroy
    @t_muro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_muro
      @t_muro = TMuro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_muro_params
      params.require(:t_muro).permit(:img, :descripcion, :fecha_creacion, :ubicacion, :caso, :T_usuario_id)
    end
end
