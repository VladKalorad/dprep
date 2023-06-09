require 'rails_helper'

RSpec.describe 'types/new' do
  before do
    assign(:type, Type.new(
                    name: 'MyString',
                    category: nil
                  ))
  end

  it 'renders new type form' do
    render

    assert_select 'form[action=?][method=?]', types_path, 'post' do
      assert_select 'input[name=?]', 'type[name]'

      assert_select 'input[name=?]', 'type[category_id]'
    end
  end
end
