class EstadoCasosController < ApplicationController
  before_action :set_estado_caso, only: [:show, :update, :destroy]

  # GET /estado_casos
  def index
    @estado_casos = EstadoCaso.all

    render json: @estado_casos
  end

  # GET /estado_casos/1
  def show
    render json: @estado_caso
  end

  # POST /estado_casos
  def create
    @estado_caso = EstadoCaso.new(estado_caso_params)

    if @estado_caso.save
      render json: @estado_caso, status: :created, location: @estado_caso
    else
      render json: @estado_caso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estado_casos/1
  def update
    if @estado_caso.update(estado_caso_params)
      render json: @estado_caso
    else
      render json: @estado_caso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estado_casos/1
  def destroy
    @estado_caso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_caso
      @estado_caso = EstadoCaso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estado_caso_params
      params.require(:estado_caso).permit(:T_estado_caso_cuadrante_id, :estado)
    end
end
