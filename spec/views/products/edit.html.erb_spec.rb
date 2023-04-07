require 'rails_helper'

RSpec.describe 'products/edit' do
  before do
    @product = assign(:product, Product.create!(
                                  name: 'MyString',
                                  price: 1.5,
                                  manufacturer: 'MyString',
                                  type: nil
                                ))
  end

  it 'renders the edit product form' do
    render

    assert_select 'form[action=?][method=?]', product_path(@product), 'post' do
      assert_select 'input[name=?]', 'product[name]'

      assert_select 'input[name=?]', 'product[price]'

      assert_select 'input[name=?]', 'product[manufacturer]'

      assert_select 'input[name=?]', 'product[type_id]'
    end
  end
end
