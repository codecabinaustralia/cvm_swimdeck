json.extract! task, :id, :title, :notes, :user_id, :student_id, :client_id, :automation_id, :created_at, :updated_at
json.url task_url(task, format: :json)
