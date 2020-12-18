require 'test_helper'

class OutletsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outlets_index_url
    assert_response :success
  end

  test "should get show" do
    get outlets_show_url
    assert_response :success
  end

  test "should get new" do
    get outlets_new_url
    assert_response :success
  end

  test "should get edit" do
    get outlets_edit_url
    assert_response :success
  end

end
