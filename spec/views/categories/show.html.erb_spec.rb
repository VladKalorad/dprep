require 'rails_helper'

RSpec.describe 'categories/show' do
  before do
    @category = assign(:category, Category.create!(
                                    name: 'Name'
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
