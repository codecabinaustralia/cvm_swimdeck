class CreateCompletedChecklistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_checklist_items do |t|
      t.references :user, foreign_key: true
      t.references :checklist_item, foreign_key: true

      t.timestamps
    end
  end
end
