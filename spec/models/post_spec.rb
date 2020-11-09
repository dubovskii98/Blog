require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should belongs to category" do
    t = Post.reflect_on_association(:category)
    expect(t.macro).to eq(:belongs_to)
  end
end
