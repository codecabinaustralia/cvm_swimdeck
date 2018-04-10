class CreateChecklistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :checklist_items do |t|
      t.string :title
      t.text :notes
      t.references :checklist, foreign_key: true

      t.timestamps
    end
  end
end
