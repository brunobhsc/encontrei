class AddUserIdToStores < ActiveRecord::Migration[5.0]
  def change
  	add_column :stores, :user_id, :integer, index: true
  end
end
