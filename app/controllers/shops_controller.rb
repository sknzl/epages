class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]
  def index
    @shops = Shop.all
  end

  def show
    @shop_api = Epages::REST::Shop.new(@shop.host, @shop.name, @shop.token)
    @product_detail = params[:product_id]
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
