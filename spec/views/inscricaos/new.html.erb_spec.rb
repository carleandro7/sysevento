require 'rails_helper'

RSpec.describe "inscricaos/new", type: :view do
  before(:each) do
    assign(:inscricao, Inscricao.new(
      nome: "MyString",
      cpf: "MyString",
      email: "MyString",
      evento: nil
    ))
  end

  it "renders new inscricao form" do
    render

    assert_select "form[action=?][method=?]", inscricaos_path, "post" do

      assert_select "input[name=?]", "inscricao[nome]"

      assert_select "input[name=?]", "inscricao[cpf]"

      assert_select "input[name=?]", "inscricao[email]"

      assert_select "input[name=?]", "inscricao[evento_id]"
    end
  end
end
