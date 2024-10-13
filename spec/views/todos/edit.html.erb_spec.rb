require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  let(:todo) {
    Todo.create!(
      item: "MyString",
      priority: "MyString"
    )
  }

  before(:each) do
    assign(:todo, todo)
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(todo), "post" do
      assert_select "input[name=?]", "todo[item]"

      assert_select "input[name=?]", "todo[priority]"
    end
  end
end
