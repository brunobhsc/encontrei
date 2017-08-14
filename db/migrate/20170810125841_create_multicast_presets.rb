class CreateMulticastPresets < ActiveRecord::Migration[5.0]
  def change
    create_table :multicast_presets do |t|
      t.string :description
      t.string :from
      t.string :from_name
      t.string :reply_to
      t.string :preview_to
      t.string :subject
      t.belongs_to :body_template, foreign_key: true
      t.boolean :with_attachment
      t.belongs_to :attachment_template, foreign_key: true
      t.boolean :pdf_convertion
      t.boolean :pdf_with_password
      t.string :pdf_password_template
      t.belongs_to :cost_centre, foreign_key: true

      t.timestamps
    end
  end
end
