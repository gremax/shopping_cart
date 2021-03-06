module ShoppingCart
  module ActsAsEngine
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_customer
        class_eval do
          has_many :orders, class_name: 'ShoppingCart::Order',
                            dependent: :destroy, as: :customer
          has_one :credit_card, class_name: 'ShoppingCart::CreditCard',
                                dependent: :destroy, as: :customer
        end
      end

      def acts_as_product
        PRODUCTS.push(self.name).uniq!

        class_eval do
          has_many :order_items, class_name: 'ShoppingCart::OrderItem',
                                 dependent: :destroy, as: :product
        end
      end
    end
  end
end

ActiveRecord::Base.send(:include, ShoppingCart::ActsAsEngine)
