class JobApplicationStatesController < ApplicationController
  before_action :set_job_application_state, only: %i[ show edit update destroy ]

  # GET /job_application_states or /job_application_states.json
  def index
    @job_application_states = JobApplicationState.all
  end

  # GET /job_application_states/1 or /job_application_states/1.json
  def show
  end

  # GET /job_application_states/new
  def new
    @job_application_state = JobApplicationState.new
  end

  # GET /job_application_states/1/edit
  def edit
  end

  # POST /job_application_states or /job_application_states.json
  def create
    @job_application_state = JobApplicationState.new(job_application_state_params)

    respond_to do |format|
      if @job_application_state.save
        format.html { redirect_to job_application_state_url(@job_application_state), notice: "Job application state was successfully created." }
        format.json { render :show, status: :created, location: @job_application_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_application_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_application_states/1 or /job_application_states/1.json
  def update
    respond_to do |format|
      if @job_application_state.update(job_application_state_params)
        format.html { redirect_to job_application_state_url(@job_application_state), notice: "Job application state was successfully updated." }
        format.json { render :show, status: :ok, location: @job_application_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_application_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_application_states/1 or /job_application_states/1.json
  def destroy
    @job_application_state.destroy

    respond_to do |format|
      format.html { redirect_to job_application_states_url, notice: "Job application state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application_state
      @job_application_state = JobApplicationState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_application_state_params
      params.require(:job_application_state).permit(:state_id, :state_name)
    end
end
