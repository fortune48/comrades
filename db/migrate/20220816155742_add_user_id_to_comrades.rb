class AddUserIdToComrades < ActiveRecord::Migration[7.0]
  def change
    add_column :comrades, :user_id, :integer
    add_index :comrades, :user_id
  end
end
