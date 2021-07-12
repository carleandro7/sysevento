FactoryBot.define do
  factory :inscricao do
    nome { "MyString" }
    cpf { "MyString" }
    email { "MyString" }
    datanascimento { "2021-06-30" }
    evento { nil }
  end
end
