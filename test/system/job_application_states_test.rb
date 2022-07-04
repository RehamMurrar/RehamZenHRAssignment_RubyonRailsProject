require "application_system_test_case"

class JobApplicationStatesTest < ApplicationSystemTestCase
  setup do
    @job_application_state = job_application_states(:one)
  end

  test "visiting the index" do
    visit job_application_states_url
    assert_selector "h1", text: "Job application states"
  end

  test "should create job application state" do
    visit job_application_states_url
    click_on "New job application state"

    fill_in "State", with: @job_application_state.state_id
    fill_in "State name", with: @job_application_state.state_name
    click_on "Create Job application state"

    assert_text "Job application state was successfully created"
    click_on "Back"
  end

  test "should update Job application state" do
    visit job_application_state_url(@job_application_state)
    click_on "Edit this job application state", match: :first

    fill_in "State", with: @job_application_state.state_id
    fill_in "State name", with: @job_application_state.state_name
    click_on "Update Job application state"

    assert_text "Job application state was successfully updated"
    click_on "Back"
  end

  test "should destroy Job application state" do
    visit job_application_state_url(@job_application_state)
    click_on "Destroy this job application state", match: :first

    assert_text "Job application state was successfully destroyed"
  end
end
