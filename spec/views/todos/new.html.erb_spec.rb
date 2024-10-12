require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      item: "MyString",
      priority: "MyString"
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input[name=?]", "todo[item]"

      assert_select "input[name=?]", "todo[priority]"
    end
  end
end
