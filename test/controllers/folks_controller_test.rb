require 'test_helper'

class FolksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get folks_index_url
    assert_response :success
  end

end
