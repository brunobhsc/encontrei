class AddStoreToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :store_id, :integer, index: true
  end
end
