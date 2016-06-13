require 'test_helper'

class ProductImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get product_imports_new_url
    assert_response :success
  end

end
