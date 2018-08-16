class PerfilSerializer < ActiveModel::Serializer
  attributes :id, :perfil, :persona, :cuadrante, :fundacion
  has_one :user
end
