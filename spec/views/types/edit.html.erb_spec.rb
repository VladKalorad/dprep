require 'rails_helper'

RSpec.describe "types/edit", type: :view do
  before(:each) do
    @type = assign(:type, Type.create!(
      name: "MyString",
      category: nil
    ))
  end

  it "renders the edit type form" do
    render

    assert_select "form[action=?][method=?]", type_path(@type), "post" do

      assert_select "input[name=?]", "type[name]"

      assert_select "input[name=?]", "type[category_id]"
    end
  end
end
