json.extract! job_application, :id, :job_application_id, :job_post_id, :user_id, :applied_on, :job_application_state_id, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
