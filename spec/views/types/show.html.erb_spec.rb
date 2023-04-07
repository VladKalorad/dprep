require 'rails_helper'

RSpec.describe 'types/show' do
  before do
    @type = assign(:type, Type.create!(
                            name: 'Name',
                            category: nil
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
