class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.references :client, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :personal_notes

      t.timestamps
    end
  end
end
