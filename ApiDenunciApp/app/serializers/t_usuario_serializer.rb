class TUsuarioSerializer < ActiveModel::Serializer
  attributes :id, :user, :password, :celular, :direccion, :zona
  has_one :T_perfil
end
