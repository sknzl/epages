module ApplicationHelper

  def find_buyers(product_id, orders_details)
    product_orders = find_orders(product_id, orders_details)
    customers = []
    product_orders.each do |order|
      customers << order.billing_address.first_name + ' ' + order.billing_address.last_name
    end
    return customers
  end


  def find_delivered(product_id, orders_details)
    product_orders = find_orders(product_id, orders_details)
    delivered = []
    product_orders.each do |order|
      if order.delivered_on != nil
        delivered << "Order number " + order.order_number + " delivered on " + order.delivered_on.strftime("%b %e, %l:%M %p")
      end
    end
    return delivered
  end

  def find_undelivered(product_id, orders_details)
    product_orders = find_orders(product_id, orders_details)
    undelivered = []
    product_orders.each do |order|
      if order.delivered_on == nil
        undelivered << "Order number " + order.order_number + " is not delivered"
      end
    end
    return undelivered
  end

  def find_orders(product_id, orders_details)
    product_orders = []
    orders_details.each do |order|
      order.line_item_container.product_line_items.each do |product|
        if product.product_id == product_id
          product_orders << order
        end
      end
    end
    return product_orders
  end

end



