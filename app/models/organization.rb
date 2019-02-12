class Organization < ApplicationRecord
  belongs_to :account

  validates :name, :cnpj,presence: true
end
