class Skill < ApplicationRecord
  belongs_to :level
  has_many :student_skills
end
