require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        item: "Item",
        priority: "Priority"
      ),
      Todo.create!(
        item: "Item",
        priority: "Priority"
      )
    ])
  end

  it "renders a list of todos" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Item".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Priority".to_s), count: 2
  end
end
