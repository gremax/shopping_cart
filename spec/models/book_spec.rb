RSpec.describe Book, type: :model do
  it 'fills an array with a model name' do
    expect(ShoppingCart::PRODUCTS).to include 'Book'
  end

  it do
    should have_many(:order_items).class_name('ShoppingCart::OrderItem')
      .dependent(:destroy)
  end
end
