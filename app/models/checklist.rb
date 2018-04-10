class Checklist < ApplicationRecord
  belongs_to :site
  belongs_to :lesson
end
