require 'rails_helper'

RSpec.describe "inscricaos/edit", type: :view do
  before(:each) do
    @inscricao = assign(:inscricao, Inscricao.create!(
      nome: "MyString",
      cpf: "MyString",
      email: "MyString",
      evento: nil
    ))
  end

  it "renders the edit inscricao form" do
    render

    assert_select "form[action=?][method=?]", inscricao_path(@inscricao), "post" do

      assert_select "input[name=?]", "inscricao[nome]"

      assert_select "input[name=?]", "inscricao[cpf]"

      assert_select "input[name=?]", "inscricao[email]"

      assert_select "input[name=?]", "inscricao[evento_id]"
    end
  end
end
