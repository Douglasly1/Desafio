class ChangehoraThoraIniciooVisitantes < ActiveRecord::Migration[7.1]
  def change
    rename_column :visitantes, :hora, :hora_inicial
  end
end
