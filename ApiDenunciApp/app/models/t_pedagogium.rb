class TPedagogium < ApplicationRecord
  belongs_to :T_usuario
  belongs_to :T_pedagogia_comentario
end
