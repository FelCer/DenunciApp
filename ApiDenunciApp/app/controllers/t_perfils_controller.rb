class TPerfilsController < ApplicationController
  before_action :set_t_perfil, only: [:show, :update, :destroy]

  # GET /t_perfils
  def index
    @t_perfils = TPerfil.all

    render json: @t_perfils
  end

  # GET /t_perfils/1
  def show
    render json: @t_perfil
  end

  # POST /t_perfils
  def create
    @t_perfil = TPerfil.new(t_perfil_params)

    if @t_perfil.save
      render json: @t_perfil, status: :created, location: @t_perfil
    else
      render json: @t_perfil.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_perfils/1
  def update
    if @t_perfil.update(t_perfil_params)
      render json: @t_perfil
    else
      render json: @t_perfil.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_perfils/1
  def destroy
    @t_perfil.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_perfil
      @t_perfil = TPerfil.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_perfil_params
      params.require(:t_perfil).permit(:idPerfil, :persona, :cuadrante, :fundacion, :T_usuario_id)
    end
end
