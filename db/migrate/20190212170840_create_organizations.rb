class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.references :account, foreign_key: true
      t.string :name, null: false
      t.string :cnpj, null: false, limit: 14
      t.string :state
      t.integer :state_code
      t.string :neighborhood
      t.integer :number
      t.string :street
      t.string :complement
      t.string :city

      t.timestamps
    end
  end
end
