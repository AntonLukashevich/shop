require 'test_helper'

class WindsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get winds_index_url
    assert_response :success
  end

end
