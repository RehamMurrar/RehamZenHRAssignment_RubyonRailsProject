require "application_system_test_case"

class JobPostsTest < ApplicationSystemTestCase
  setup do
    @job_post = job_posts(:one)
  end

  test "visiting the index" do
    visit job_posts_url
    assert_selector "h1", text: "Job posts"
  end

  test "should create job post" do
    visit job_posts_url
    click_on "New job post"

    fill_in "Job post describtion", with: @job_post.job_post_describtion
    fill_in "Job post", with: @job_post.job_post_id
    fill_in "Job post title", with: @job_post.job_post_title
    fill_in "Posted on", with: @job_post.posted_on
    fill_in "User", with: @job_post.user_id
    click_on "Create Job post"

    assert_text "Job post was successfully created"
    click_on "Back"
  end

  test "should update Job post" do
    visit job_post_url(@job_post)
    click_on "Edit this job post", match: :first

    fill_in "Job post describtion", with: @job_post.job_post_describtion
    fill_in "Job post", with: @job_post.job_post_id
    fill_in "Job post title", with: @job_post.job_post_title
    fill_in "Posted on", with: @job_post.posted_on
    fill_in "User", with: @job_post.user_id
    click_on "Update Job post"

    assert_text "Job post was successfully updated"
    click_on "Back"
  end

  test "should destroy Job post" do
    visit job_post_url(@job_post)
    click_on "Destroy this job post", match: :first

    assert_text "Job post was successfully destroyed"
  end
end
