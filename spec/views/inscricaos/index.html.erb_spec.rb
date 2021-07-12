require 'rails_helper'

RSpec.describe "inscricaos/index", type: :view do
  before(:each) do
    assign(:inscricaos, [
      Inscricao.create!(
        nome: "Nome",
        cpf: "Cpf",
        email: "Email",
        evento: nil
      ),
      Inscricao.create!(
        nome: "Nome",
        cpf: "Cpf",
        email: "Email",
        evento: nil
      )
    ])
  end

  it "renders a list of inscricaos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Cpf".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
