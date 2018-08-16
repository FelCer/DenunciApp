class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :user, :password, :celular, :direccion, :zona
  has_one :perfil
end
