class CreateProfissionals < ActiveRecord::Migration[7.1]
  def change
    create_table :profissionals do |t|
      t.string :nome
      t.references :setor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
