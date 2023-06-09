require 'rails_helper'

RSpec.describe 'products/show' do
  before do
    @product = assign(:product, Product.create!(
                                  name: 'Name',
                                  price: 2.5,
                                  manufacturer: 'Manufacturer',
                                  type: nil
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(//)
  end
end
