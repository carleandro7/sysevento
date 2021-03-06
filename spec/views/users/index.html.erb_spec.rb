require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        nome: "Nome",
        status: "Status"
      ),
      User.create!(
        nome: "Nome",
        status: "Status"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
