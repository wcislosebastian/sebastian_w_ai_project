json.extract! attendance, :id, :presence, :description, :excused, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
