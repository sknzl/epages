class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]
  def index
    @shops = Shop.all
  end

  def show
    @shop_api = Epages::REST::Shop.new(@shop.host, @shop.name, @shop.token)
    @product_id = params[:product_id]


    @orders_details = []
    @shop_api.orders.items.each do |order|
      @orders_details << @shop_api.order(order.order_id)
    end
    #orders_details.first.line_item_container.product_line_items
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
