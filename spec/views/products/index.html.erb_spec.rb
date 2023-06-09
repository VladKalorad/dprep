require 'rails_helper'

RSpec.describe 'products/index' do
  before do
    assign(:products, [
             Product.create!(
               name: 'Name',
               price: 2.5,
               manufacturer: 'Manufacturer',
               type: nil
             ),
             Product.create!(
               name: 'Name',
               price: 2.5,
               manufacturer: 'Manufacturer',
               type: nil
             )
           ])
  end

  it 'renders a list of products' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.5.to_s, count: 2
    assert_select 'tr>td', text: 'Manufacturer'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
