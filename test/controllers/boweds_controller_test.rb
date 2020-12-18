require 'test_helper'

class BowedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boweds_index_url
    assert_response :success
  end

end
