require 'rails_helper'

RSpec.describe "inscricaos/show", type: :view do
  before(:each) do
    @inscricao = assign(:inscricao, Inscricao.create!(
      nome: "Nome",
      cpf: "Cpf",
      email: "Email",
      evento: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
  end
end
