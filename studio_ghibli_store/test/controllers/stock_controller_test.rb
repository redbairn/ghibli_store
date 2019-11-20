require 'test_helper'

class StockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stock_index_url
    assert_response :success
  end

  test "should get show" do
    get stock_show_url
    assert_response :success
  end

  test "should get new" do
    get stock_new_url
    assert_response :success
  end

  test "should get edit" do
    get stock_edit_url
    assert_response :success
  end

  test "should get delete" do
    get stock_delete_url
    assert_response :success
  end

end
