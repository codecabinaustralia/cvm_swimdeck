class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :title
      t.integer :rank_order

      t.timestamps
    end
  end
end
