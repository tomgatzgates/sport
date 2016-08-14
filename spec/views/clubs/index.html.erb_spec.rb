require 'rails_helper'

RSpec.describe "clubs/index", type: :view do
  before(:each) do
    2.times { create(:club) }
    assign(:clubs, Club.all)
  end

  it "renders a list of clubs" do
    render
  end
end
