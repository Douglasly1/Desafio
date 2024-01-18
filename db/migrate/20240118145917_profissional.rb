class Profissional < ActiveRecord::Migration[7.1]
  def change
    add_column :profissionals, :cpf, :string
    add_column :profissionals, :rg, :string
    add_column :profissionals, :telefone, :string
    add_reference :profissionals, :unidade, foreign_key: true
    add_column :profissionals, :cargo, :string
  end
end
