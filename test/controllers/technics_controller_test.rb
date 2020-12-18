require 'test_helper'

class TechnicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get technics_index_url
    assert_response :success
  end

end
