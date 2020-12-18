require 'test_helper'

class StorehousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get storehouses_index_url
    assert_response :success
  end

  test "should get show" do
    get storehouses_show_url
    assert_response :success
  end

  test "should get new" do
    get storehouses_new_url
    assert_response :success
  end

  test "should get edit" do
    get storehouses_edit_url
    assert_response :success
  end

end
