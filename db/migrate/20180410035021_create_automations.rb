class CreateAutomations < ActiveRecord::Migration[5.2]
  def change
    create_table :automations do |t|
      t.string :trigger_model
      t.string :trigger_crud
      t.string :trigger_math
      t.integer :rule_integer
      t.string :rule_value
      t.string :action_model
      t.string :action_crud
      t.string :action_table
      t.string :action_value

      t.timestamps
    end
  end
end
