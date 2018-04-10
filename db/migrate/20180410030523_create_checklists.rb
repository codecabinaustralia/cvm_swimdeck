class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.references :site, foreign_key: true
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
