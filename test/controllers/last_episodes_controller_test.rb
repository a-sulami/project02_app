require 'test_helper'

class LastEpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get last_episodes_index_url
    assert_response :success
  end

  test "should get new" do
    get last_episodes_new_url
    assert_response :success
  end

  test "should get show" do
    get last_episodes_show_url
    assert_response :success
  end

  test "should get edit" do
    get last_episodes_edit_url
    assert_response :success
  end

end
