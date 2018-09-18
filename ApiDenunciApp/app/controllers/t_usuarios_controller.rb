class TUsuariosController < ApplicationController
  before_action :authenticate_t_usuario, only: [:show, :update, :destroy]
  before_action :set_t_usuario, only: [:show, :update, :destroy]
  has_secure_password
  before_save :downcase_email

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z]+[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, presence:true
  validates :email, presence:true, length: {maximum: 255},
  format: {with:VALID_EMAIL_REGEX}, uniqueness:{case_sensitive: false}
  validates :password, presence:true, length: {minimum: 8}, allow_nil: true
private
  def downcase_email
    self.email.downcase_email!
 end
  # GET /t_usuarios
  def index
    @t_usuarios = TUsuario.all

    render json: @t_usuarios
  end

  # GET /t_usuarios/1
  def show
    render json: @t_usuario
  end

  # POST /t_usuarios
  def create
    @t_usuario = TUsuario.new(t_usuario_params)

    if @t_usuario.save
      render json: @t_usuario, status: :created, location: @t_usuario
    else
      render json: @t_usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /t_usuarios/1
  def update
    if @t_usuario.update(t_usuario_params)
      render json: @t_usuario
    else
      render json: @t_usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /t_usuarios/1
  def destroy
    @t_usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_usuario
      @t_usuario = TUsuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def t_usuario_params
      params.require(:t_usuario).permit(:user, :password, :password_confirmation, :celular, :direccion, :zona, :T_perfil_id)
    end
end
