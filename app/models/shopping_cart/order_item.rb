module ShoppingCart
  class OrderItem < ActiveRecord::Base
    belongs_to :book
    belongs_to :order
    has_one :user, through: :order, class_name: ShoppingCart.user_class.to_s

    validates :price, :quantity, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }
    validates :quantity, numericality: { greater_than: 0 }
  end
end