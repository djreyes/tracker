require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :title => "MyString",
      :description => "MyText",
      :priority => 1,
      :assigned_to_id => 1
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_title[name=?]", "task[title]"

      assert_select "textarea#task_description[name=?]", "task[description]"

      assert_select "input#task_priority[name=?]", "task[priority]"

      assert_select "input#task_assigned_to_id[name=?]", "task[assigned_to_id]"
    end
  end
end
