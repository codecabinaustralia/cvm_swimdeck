class CreateCompletedChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_checklists do |t|
      t.references :user, foreign_key: true
      t.references :checklist, foreign_key: true

      t.timestamps
    end
  end
end
