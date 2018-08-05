require 'test_helper'

class ShopTest < ActiveSupport::TestCase

  test "should not save shop without host" do
    shop = Shop.new
    shop.name = "Test"
    assert_not shop.save, "Saved the shop without a host"
  end


  test "should not save shop without name" do
    shop = Shop.new
    shop.host = "host.com"
    assert_not shop.save, "Saved the shop without a name"
  end

end
