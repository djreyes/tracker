require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :title => "MyString",
      :description => "MyText",
      :priority => 1,
      :assigned_to_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_title[name=?]", "task[title]"

      assert_select "textarea#task_description[name=?]", "task[description]"

      assert_select "input#task_priority[name=?]", "task[priority]"

      assert_select "input#task_assigned_to_id[name=?]", "task[assigned_to_id]"
    end
  end
end
