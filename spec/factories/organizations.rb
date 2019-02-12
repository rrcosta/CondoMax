FactoryBot.define do
  factory :organization do
    account
    name { "MyString" }
    cnpj { "MyString" }
    state { "MyString" }
    state_code { 1 }
    neighborhood { "MyString" }
    number { 1 }
    street { "MyString" }
    complement { "MyString" }
    city { "MyString" }
  end
end
