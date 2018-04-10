class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :title
      t.string :rank_order
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
