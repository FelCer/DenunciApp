class TMuroComentarioSerializer < ActiveModel::Serializer
  attributes :id, :caso, :descripcion, :fecha_descripcion
  has_one :T_usuario
end
