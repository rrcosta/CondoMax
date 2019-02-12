FactoryBot.define do
  factory :organization do
    account
    name { "Caritas Global Ltda" }
    cnpj { "04041907000150" }
    state { "SP" }
    state_code { 1 }
    neighborhood { "Jardim São Bento" }
    number { 172 }
    street { "Alameda Glória" }
    complement { "Conjunto 7" }
    city { "São Paulo" }
  end
end
