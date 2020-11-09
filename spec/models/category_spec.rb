require 'rails_helper'

RSpec.describe Category, type: :model do
  it "should have many posts" do
    t = Category.reflect_on_association(:posts)
    expect(t.macro).to eq(:has_many)
  end
end
