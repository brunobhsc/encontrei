class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :adress
      t.string :phone
      t.string :email
      t.string :site
      t.belongs_to :tipo, foreign_key: true, inde: true
      t.belongs_to :customer, foreign_key: true, index: true

      t.timestamps
    end
  end
end
