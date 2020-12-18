require 'test_helper'

class SupplierListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplier_lists_index_url
    assert_response :success
  end

end
