json.extract! meeting, :id, :name, :surname, :mail, :phone, :date, :time, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
