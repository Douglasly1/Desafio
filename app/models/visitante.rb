class Visitante < ApplicationRecord
  belongs_to :setor

  validates :nome, presence: true
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :hora_inicial, presence: true
  
  # Validação para garantir que a hora inicial seja menor que a hora final
  validate :hora_inicial_deve_ser_menor_que_hora_final

  private

  # Método de validação personalizada
  def hora_inicial_deve_ser_menor_que_hora_final
    if hora_inicial.present? && hora_termino.present? && hora_termino <= hora_inicial
      errors.add(:hora_inicial, "Não pode ser menor ou igual ao horario inicial")
    end
  end
  scope :search, ->(query) { where("cpf like ?", "%#{query}%")}
end



