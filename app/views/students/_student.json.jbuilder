json.extract! student, :id, :client_id, :first_name, :last_name, :dob, :personal_notes, :created_at, :updated_at
json.url student_url(student, format: :json)
