class CreateSetors < ActiveRecord::Migration[7.1]
  def change
    create_table :setors do |t|
      t.string :nome
      t.references :unidade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
