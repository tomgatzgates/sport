require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    2.times { create(:user) }
    assign(:users, User.all)
  end

  it "renders a list of users" do
    render
  end
end
