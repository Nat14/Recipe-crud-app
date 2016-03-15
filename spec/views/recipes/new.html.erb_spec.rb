require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :description => "MyString",
      :direction => "MyText"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input#recipe_title[name=?]", "recipe[title]"

      assert_select "input#recipe_description[name=?]", "recipe[description]"

      assert_select "textarea#recipe_direction[name=?]", "recipe[direction]"
    end
  end
end
