class Setor < ApplicationRecord

    belongs_to :unidade
  
    validates :nome, presence: true
    validates :unidade_id, presence: true
  end

