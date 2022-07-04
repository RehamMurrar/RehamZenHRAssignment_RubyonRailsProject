require "test_helper"

class JobApplicationStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_application_state = job_application_states(:one)
  end

  test "should get index" do
    get job_application_states_url
    assert_response :success
  end

  test "should get new" do
    get new_job_application_state_url
    assert_response :success
  end

  test "should create job_application_state" do
    assert_difference("JobApplicationState.count") do
      post job_application_states_url, params: { job_application_state: { state_id: @job_application_state.state_id, state_name: @job_application_state.state_name } }
    end

    assert_redirected_to job_application_state_url(JobApplicationState.last)
  end

  test "should show job_application_state" do
    get job_application_state_url(@job_application_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_application_state_url(@job_application_state)
    assert_response :success
  end

  test "should update job_application_state" do
    patch job_application_state_url(@job_application_state), params: { job_application_state: { state_id: @job_application_state.state_id, state_name: @job_application_state.state_name } }
    assert_redirected_to job_application_state_url(@job_application_state)
  end

  test "should destroy job_application_state" do
    assert_difference("JobApplicationState.count", -1) do
      delete job_application_state_url(@job_application_state)
    end

    assert_redirected_to job_application_states_url
  end
end
