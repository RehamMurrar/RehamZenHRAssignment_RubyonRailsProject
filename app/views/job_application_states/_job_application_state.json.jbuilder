json.extract! job_application_state, :id, :state_id, :state_name, :created_at, :updated_at
json.url job_application_state_url(job_application_state, format: :json)
