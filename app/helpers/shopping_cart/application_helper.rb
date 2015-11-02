module ShoppingCart
  module ApplicationHelper
    def cart_counter
      current_order.order_items.count if current_order
    end

    def order_total_price
      number_to_currency current_order.calc_total_price if cart_counter > 0
    end
  end
end
