class CreateVisitantes < ActiveRecord::Migration[7.1]
  def change
    create_table :visitantes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :tel
      t.datetime :data_hora
      t.boolean :concluida
      t.string :foto
      t.references :setor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
