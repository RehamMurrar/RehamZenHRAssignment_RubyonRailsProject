json.extract! job_post, :id, :job_post_id, :job_post_title, :job_post_describtion, :user_id, :posted_on, :created_at, :updated_at
json.url job_post_url(job_post, format: :json)
