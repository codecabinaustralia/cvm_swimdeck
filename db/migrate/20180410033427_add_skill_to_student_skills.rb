class AddSkillToStudentSkills < ActiveRecord::Migration[5.2]
  def change
    add_reference :student_skills, :skill, foreign_key: true
  end
end
