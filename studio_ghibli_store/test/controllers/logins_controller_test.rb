require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logins_index_url
    assert_response :success
  end

  test "should get show" do
    get logins_show_url
    assert_response :success
  end

  test "should get new" do
    get logins_new_url
    assert_response :success
  end

  test "should get edit" do
    get logins_edit_url
    assert_response :success
  end

  test "should get delete" do
    get logins_delete_url
    assert_response :success
  end

end
