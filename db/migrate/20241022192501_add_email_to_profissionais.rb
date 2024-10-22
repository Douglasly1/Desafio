class AddEmailToProfissionais < ActiveRecord::Migration[7.1]
  def change
    # Adiciona a coluna email na tabela profissionais
    add_column :profissionals, :email, :string

    # Adiciona uma restrição de chave estrangeira para a coluna email de profissionais apontar para a coluna email de users
    add_foreign_key :profissionals, :users, column: :email, primary_key: :email
  end
end
