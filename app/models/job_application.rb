class JobApplication < ApplicationRecord
  belongs_to :job_post
  belongs_to :user
  belongs_to :job_application_state
end
