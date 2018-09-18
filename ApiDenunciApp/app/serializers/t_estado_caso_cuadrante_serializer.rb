class TEstadoCasoCuadranteSerializer < ActiveModel::Serializer
  attributes :id, :cuadrante, :id_estado
  has_one :t_muro_caso
end
