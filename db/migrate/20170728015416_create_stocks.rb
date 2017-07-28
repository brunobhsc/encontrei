class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :store, foreign_key: true

      t.timestamps
    end
  end
end
