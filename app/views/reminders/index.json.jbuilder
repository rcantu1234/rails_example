json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :title, :description
  json.url reminder_url(reminder, format: :json)
end
