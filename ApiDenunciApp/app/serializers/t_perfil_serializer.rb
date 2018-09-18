class TPerfilSerializer < ActiveModel::Serializer
  attributes :id, :idPerfil, :persona, :cuadrante, :fundacion
  has_one :T_usuario
end
