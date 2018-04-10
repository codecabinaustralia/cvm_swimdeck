class CreateLessonSites < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_sites do |t|
      t.references :lesson, foreign_key: true
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
