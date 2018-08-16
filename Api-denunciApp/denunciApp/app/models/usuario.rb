class Usuario < ApplicationRecord
  belongs_to :perfil
  validates :password, presence:true, length: {minimum: 8}, allow_nil: true
end
