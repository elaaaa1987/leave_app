json.extract! leave_apply, :id, :start_date, :end_date, :leave_type, :session_name, :reason, :status, :created_at, :updated_at
json.url leave_apply_url(leave_apply, format: :json)
