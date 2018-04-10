class CreateCompletedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_tasks do |t|
      t.string :title
      t.text :notes
      t.references :user, foreign_key: true
      t.references :student, foreign_key: true
      t.references :client, foreign_key: true
      t.references :automation, foreign_key: true

      t.timestamps
    end
  end
end
