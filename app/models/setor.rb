class Setor < ApplicationRecord
  has_many :colaboradors
  belongs_to :unidade
end
