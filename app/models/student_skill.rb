class StudentSkill < ApplicationRecord
  belongs_to :student
  belongs_to :user
  belongs_to :skill
end
