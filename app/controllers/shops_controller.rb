class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :destroy, :edit, :update]
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @shop.update_attributes(shop_params)
      redirect_to shops_path
    else
      render 'edit'
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path
  end

  def show
    @shop_api = Epages::REST::Shop.new(@shop.host, @shop.name, @shop.token)
    @product_id = params[:product_id]


    @orders_details = []
    @shop_api.orders.items.each do |order|
      @orders_details << @shop_api.order(order.order_id)
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :host, :token)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
