class Profissional < ApplicationRecord
  belongs_to :setor
  belongs_to :unidade
  belongs_to :user
  

  validates :nome, presence: true
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :telefone, presence: true
  validates :cargo, presence: true
  validates :setor_id, presence: true
  validates :unidade_id, presence: true
end
