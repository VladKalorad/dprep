require 'rails_helper'

RSpec.describe 'categories/index' do
  before do
    assign(:categories, [
             Category.create!(
               name: 'Name'
             ),
             Category.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of categories' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
