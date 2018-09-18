class TPedagogiaComentarioSerializer < ActiveModel::Serializer
  attributes :id, :descripcion, :fecha_creacion, :T_usuario_references
  has_one :T_pedagodia
end
