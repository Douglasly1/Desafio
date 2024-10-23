class AddUserToProfissionals < ActiveRecord::Migration[7.1]
  def change
    remove_column :profissionals, :email
    add_column :profissionals, :user_id, :integer

  end
end