json.extract! @activity, :id, :event_type, :performable_id, :performable_type, :actable_id, :actable_type, :human, :recorded_at, :created_at, :updated_at
json.event_type do
  json.extract! @activity.event_type, :name, :human
end
