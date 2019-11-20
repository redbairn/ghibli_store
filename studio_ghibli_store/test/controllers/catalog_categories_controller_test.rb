require 'test_helper'

class CatalogCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catalog_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get catalog_categories_show_url
    assert_response :success
  end

  test "should get new" do
    get catalog_categories_new_url
    assert_response :success
  end

  test "should get edit" do
    get catalog_categories_edit_url
    assert_response :success
  end

  test "should get delete" do
    get catalog_categories_delete_url
    assert_response :success
  end

end
