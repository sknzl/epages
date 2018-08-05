require 'test_helper'

class ShopControllerTest < ActionDispatch::IntegrationTest
    test "should get index" do
    get shops_url
    assert_response :success
  end

test "should create a shop" do
  assert_difference('Shop.count') do
    post shops_url, params: { shop: { name: 'Test shop', host: 'host.com' } }
  end

  assert_redirected_to shops_path
end
end
