class User < ApplicationRecord
  belongs_to :user_type
  has_many :job_posts
  has_many :job_applications
end
