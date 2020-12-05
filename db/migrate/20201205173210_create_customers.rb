class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :name
      t.string :name_kana
      t.string :gender
      t.string :birthday
      t.string :hash_password
      
      t.timestamps
    end
  end
end
