require 'test_helper'

class UserRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_registrations_index_url
    assert_response :success
  end

  test "should get show" do
    get user_registrations_show_url
    assert_response :success
  end

  test "should get new" do
    get user_registrations_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_registrations_edit_url
    assert_response :success
  end

  test "should get delete" do
    get user_registrations_delete_url
    assert_response :success
  end

end
