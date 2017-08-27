class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.belongs_to :taggable, polymorphic: true

      t.timestamps
    end
    add_index :tags, [:taggable_id, :taggable_type]
  end
end
