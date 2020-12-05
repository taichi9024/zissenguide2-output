class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :customer, null: false
      t.string :type
      t.string :postal_code
      t.string :city
      t.string :address1
      t.string :address2
      t.string :company_name,null: false, default: ""
      t.string :division_name, null: false, default: ""

      t.timestamps
    end
  end
end
