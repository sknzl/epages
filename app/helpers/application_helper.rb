module ApplicationHelper

  def find_buyers(product_id, orders_details)
    product_orders = []
    #orders_details.first.line_item_container.product_line_items.first.product_id
    orders_details.each do |order|
      order.line_item_container.product_line_items.each do |product|
        if product.product_id == product_id
          product_orders << order
        end
      end
    end
    # byebug
    customers = []
    product_orders.each do |order|
      customers << order.billing_address.first_name + ' '  +order.billing_address.last_name
    end
    return customers
  end

end


  #   customers = []
  #   product_orders.each do |order|
  #     customers << shop_api.customer(order.customer_id).billing_address.first_name + ' ' + shop_api.customer(order.customer_id).billing_address.last_name
  #   end
  #   return customers
  # end
