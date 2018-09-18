class TPedagogiumSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :descripcion, :img, :fecha_creacion
  has_one :T_usuario
  has_one :T_pedagogia_comentario
end
