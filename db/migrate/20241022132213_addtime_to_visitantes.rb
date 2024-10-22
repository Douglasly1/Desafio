class AddtimeToVisitantes < ActiveRecord::Migration[7.1]
  def change
    add_column :visitantes, :hora_termino, :time
  end
end
