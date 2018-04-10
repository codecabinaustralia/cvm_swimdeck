class Task < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :client
  belongs_to :automation
end
