class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.references :role, foreign_key: true
      t.string :model_name
      t.string :perm_create
      t.string :perm_read
      t.string :perm_update
      t.string :perm_destroy

      t.timestamps
    end
  end
end
