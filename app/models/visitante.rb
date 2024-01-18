class Visitante < ApplicationRecord
  belongs_to :setor

  scope :search, ->(query) { where("cpf like ?", "%#{query}%")}
end
