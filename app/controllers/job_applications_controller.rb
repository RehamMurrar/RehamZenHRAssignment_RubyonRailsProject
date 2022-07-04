class JobApplicationsController < ApplicationController

  # POST /job_applications or /job_applications.json
  def create
    @job_post=JobPost.find(params[:job_post_id])
    @job_application = @job_post.job_applications.new(job_application_params)
    @job_application.user_id = session[:user].to_i
    @job_application.job_application_state_id = 2
    @job_application.job_application_id=12
    @job_application.applied_on = Time.now
    @job_application.save
    redirect_to job_post_path(@job_post)
  end

  def job_application_params
    params.require(:job_application).permit(:body)
  end
end
