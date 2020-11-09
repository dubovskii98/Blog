require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        url: "Url",
        category_id: "Category"
      ),
      Post.create!(
        title: "Title",
        url: "Url",
        category_id: "Category"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Url".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
  end
end
