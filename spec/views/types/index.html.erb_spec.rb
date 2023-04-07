require 'rails_helper'

RSpec.describe 'types/index' do
  before do
    assign(:types, [
             Type.create!(
               name: 'Name',
               category: nil
             ),
             Type.create!(
               name: 'Name',
               category: nil
             )
           ])
  end

  it 'renders a list of types' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
