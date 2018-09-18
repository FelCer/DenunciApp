class TMuroSerializer < ActiveModel::Serializer
  attributes :id, :img, :descripcion, :fecha_creacion, :ubicacion, :caso
  has_one :T_usuario
end
