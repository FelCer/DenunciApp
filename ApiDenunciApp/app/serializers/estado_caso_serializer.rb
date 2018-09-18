class EstadoCasoSerializer < ActiveModel::Serializer
  attributes :id, :estado
  has_one :T_estado_caso_cuadrante
end
