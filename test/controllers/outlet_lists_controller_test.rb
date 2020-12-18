require 'test_helper'

class OutletListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outlet_lists_index_url
    assert_response :success
  end

end
