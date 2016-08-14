require 'rails_helper'

RSpec.describe "clubs/show", type: :view do
  before(:each) do
    @club = assign(:club, create(:club))
  end

  it "renders attributes in <p>" do
    render
  end
end
