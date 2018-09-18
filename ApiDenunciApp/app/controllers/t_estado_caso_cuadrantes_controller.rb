class TEstadoCasoCuadrantesController < ApplicationController
  before_action :set_t_estado_caso_cuadrante, only: [:show, :update, :destroy]

  # GET /t_estado_caso_cuadrantes
  def index
    @t_estado_caso_cuadrantes = TEstadoCasoCuadrante.all

    render json: @t_estado_caso_cuadrantes
  end

  # GET /t_estado_caso_cuadrantes/1
  def show
    render json: @t_estado_caso_cuadrante
  end

  # POST /t_estado_caso_cuadrantes
  def create
    @t_estado_caso_cuadrante = TEstadoCasoCuadrante.new(t_estado_caso_cuadrante_params)

    if @t_estado_caso_cuadrante.save
      render json: @t_estado_caso_cuadrante, status: :created, location: @t_estado_caso_cuadrante
    else
      render json: @t_estado_caso_cuadrante.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_estado_caso_cuadrantes/1
  def update
    if @t_estado_caso_cuadrante.update(t_estado_caso_cuadrante_params)
      render json: @t_estado_caso_cuadrante
    else
      render json: @t_estado_caso_cuadrante.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_estado_caso_cuadrantes/1
  def destroy
    @t_estado_caso_cuadrante.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_estado_caso_cuadrante
      @t_estado_caso_cuadrante = TEstadoCasoCuadrante.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_estado_caso_cuadrante_params
      params.require(:t_estado_caso_cuadrante).permit(:t_muro_caso_id, :cuadrante, :id_estado)
    end
end
